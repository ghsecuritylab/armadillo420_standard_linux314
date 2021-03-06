/*
 * ipsec_alg AES cipher stubs
 *
 * Author: JuanJo Ciarlante <jjo-ipsec@mendoza.gov.ar>
 * 
 * $Id: ipsec_alg_aes.c,v 1.2 2004/08/02 03:42:17 gerg Exp $
 * 
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.  See <http://www.fsf.org/copyleft/gpl.txt>.
 * 
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * for more details.
 *
 */
#include <linux/config.h>
#include <linux/version.h>

/*	
 *	special case: ipsec core modular with this static algo inside:
 *	must avoid MODULE magic for this file
 */
#if CONFIG_IPSEC_MODULE && CONFIG_IPSEC_ALG_AES
#undef MODULE
#endif

#include <linux/module.h>
#include <linux/init.h>

#include <linux/kernel.h> /* printk() */
#include <linux/errno.h>  /* error codes */
#include <linux/types.h>  /* size_t */
#include <linux/string.h>

/* Check if __exit is defined, if not null it */
#ifndef __exit
#define __exit
#endif

/*	Low freeswan header coupling	*/
#include "ipsec_alg.h"
#include "libaes/aes_cbc.h"

#define CONFIG_IPSEC_ALG_AES_MAC 1

#define AES_CONTEXT_T aes_context
MODULE_AUTHOR("JuanJo Ciarlante <jjo-ipsec@mendoza.gov.ar>");
static int debug=0;
MODULE_PARM(debug, "i");
static int test=0;
MODULE_PARM(test, "i");
static int keyminbits=0;
MODULE_PARM(keyminbits, "i");
static int keymaxbits=0;
MODULE_PARM(keymaxbits, "i");

#if CONFIG_IPSEC_ALG_AES_MAC
#include "libaes/aes_xcbc_mac.h"

/*	
 *	Not IANA number yet (draft-ietf-ipsec-ciph-aes-xcbc-mac-00.txt),
 *	force user to pass an id 
 */
static int auth_id=0;
MODULE_PARM(auth_id, "i");
#endif

#define ESP_AES			12	/* truely _constant_  :)  */

/* 128, 192 or 256 */
#define ESP_AES_KEY_SZ_MIN	16 	/* 128 bit secret key */
#define ESP_AES_KEY_SZ_MAX	32 	/* 256 bit secret key */
#define ESP_AES_CBC_BLK_LEN	16	/* AES-CBC block size */

static int _aes_set_key(__u8 * key_e, const __u8 * key, int keysize) {
	int ret;
	AES_CONTEXT_T *ctx=(AES_CONTEXT_T*)key_e;
	ret=AES_set_key(ctx, key, keysize)!=0? 0: -EINVAL;
	if (debug > 0)
		printk(KERN_DEBUG "klips_debug:_aes_set_key:"
				"ret=%d key_e=%p key=%p keysize=%d\n",
				ret, key_e, key, keysize);
	return ret;
}
static int _aes_cbc_encrypt(__u8 * key_e, __u8 * in, __u8 * out, int ilen, const __u8 * iv, int encrypt) {
	AES_CONTEXT_T *ctx=(AES_CONTEXT_T*)key_e;
	if (debug > 0)
		printk(KERN_DEBUG "klips_debug:_aes_cbc_encrypt:"
				"key_e=%p in=%p out=%p ilen=%d iv=%p encrypt=%d\n",
				key_e, in, out, ilen, iv, encrypt);
	return AES_cbc_encrypt(ctx, in, out, ilen, iv, encrypt);
}
#if CONFIG_IPSEC_ALG_AES_MAC
static int _aes_mac_set_key(__u8 * key_a, const __u8 * key, int keylen) {
	aes_context_mac *ctxm=(aes_context_mac *)key_a;
	return AES_xcbc_mac_set_key(ctxm, key, keylen)? 0 : -EINVAL;
}
static int _aes_mac_hash(__u8 * key_a, const __u8 * dat, int len, __u8 * hash, int hashlen) {
	int ret;
	char hash_buf[16];
	aes_context_mac *ctxm=(aes_context_mac *)key_a;
	ret=AES_xcbc_mac_hash(ctxm, dat, len, hash_buf);
	memcpy(hash, hash_buf, hashlen);
	return ret;
}
static struct ipsec_alg_auth ipsec_alg_AES_MAC = {
	ixt_version:	IPSEC_ALG_VERSION,
	ixt_module:	THIS_MODULE,
	ixt_refcnt:	ATOMIC_INIT(0),
	ixt_alg_type:	IPSEC_ALG_TYPE_AUTH,
	ixt_alg_id: 	0,
	ixt_name: 	"aes_mac",
	ixt_blocksize:	ESP_AES_CBC_BLK_LEN, 
	ixt_keyminbits:	ESP_AES_KEY_SZ_MIN*8,
	ixt_keymaxbits:	ESP_AES_KEY_SZ_MAX*8,
	ixt_a_keylen:	ESP_AES_KEY_SZ_MAX,
	ixt_a_ctx_size:	sizeof(aes_context_mac),
	ixt_a_hmac_set_key:	_aes_mac_set_key,
	ixt_a_hmac_hash:_aes_mac_hash,
};
#endif /* CONFIG_IPSEC_ALG_AES_MAC */
static struct ipsec_alg_enc ipsec_alg_AES = {
	ixt_version:	IPSEC_ALG_VERSION,
	ixt_module:	THIS_MODULE,
	ixt_refcnt:	ATOMIC_INIT(0),
	ixt_alg_type:	IPSEC_ALG_TYPE_ENCRYPT,
	ixt_alg_id: 	ESP_AES,
	ixt_name: 	"aes",
	ixt_blocksize:	ESP_AES_CBC_BLK_LEN, 
	ixt_keyminbits:	ESP_AES_KEY_SZ_MIN*8,
	ixt_keymaxbits:	ESP_AES_KEY_SZ_MAX*8,
	ixt_e_keylen:	ESP_AES_KEY_SZ_MAX,
	ixt_e_ctx_size:	sizeof(AES_CONTEXT_T),
	ixt_e_set_key:	_aes_set_key,
	ixt_e_cbc_encrypt:_aes_cbc_encrypt,
};
	
IPSEC_ALG_MODULE_INIT( ipsec_aes_init )
{
	int ret, test_ret;
	if (keyminbits)
		ipsec_alg_AES.ixt_keyminbits=keyminbits;
	if (keymaxbits) {
		ipsec_alg_AES.ixt_keymaxbits=keymaxbits;
		if (keymaxbits*8>ipsec_alg_AES.ixt_keymaxbits)
			ipsec_alg_AES.ixt_e_keylen=keymaxbits*8;
	}
	ret=register_ipsec_alg_enc(&ipsec_alg_AES);
	printk("%s(alg_type=%d alg_id=%d name=%s): ret=%d\n", 
			__FUNCTION__,
			ipsec_alg_AES.ixt_alg_type, 
			ipsec_alg_AES.ixt_alg_id, 
			ipsec_alg_AES.ixt_name, 
			ret);
	if (ret==0 && test) {
		test_ret=ipsec_alg_test(
				ipsec_alg_AES.ixt_alg_type,
				ipsec_alg_AES.ixt_alg_id, 
				test);
		printk("%s(alg_type=%d alg_id=%d): test_ret=%d\n", 
				__FUNCTION__,
				ipsec_alg_AES.ixt_alg_type, 
				ipsec_alg_AES.ixt_alg_id, 
				test_ret);
	}
#if CONFIG_IPSEC_ALG_AES_MAC
	if (auth_id!=0){
		int ret;
		ipsec_alg_AES_MAC.ixt_alg_id=auth_id;
		ret=register_ipsec_alg_auth(&ipsec_alg_AES_MAC);
		printk("%s(alg_type=%d alg_id=%d name=%s): ret=%d\n", 
				__FUNCTION__,
				ipsec_alg_AES_MAC.ixt_alg_type, 
				ipsec_alg_AES_MAC.ixt_alg_id, 
				ipsec_alg_AES_MAC.ixt_name, 
				ret);
		if (ret==0 && test) {
			test_ret=ipsec_alg_test(
					ipsec_alg_AES_MAC.ixt_alg_type,
					ipsec_alg_AES_MAC.ixt_alg_id, 
					test);
			printk("%s(alg_type=%d alg_id=%d): test_ret=%d\n", 
					__FUNCTION__,
					ipsec_alg_AES_MAC.ixt_alg_type, 
					ipsec_alg_AES_MAC.ixt_alg_id, 
					test_ret);
		}
	} else {
		printk(KERN_DEBUG "klips_debug: experimental ipsec_alg_AES_MAC not registered [Ok] (auth_id=%d)\n", auth_id);
	}
#endif /* CONFIG_IPSEC_ALG_AES_MAC */
	return ret;
}
IPSEC_ALG_MODULE_EXIT( ipsec_aes_fini )
{
#if CONFIG_IPSEC_ALG_AES_MAC
	if (auth_id) unregister_ipsec_alg_auth(&ipsec_alg_AES_MAC);
#endif /* CONFIG_IPSEC_ALG_AES_MAC */
	unregister_ipsec_alg_enc(&ipsec_alg_AES);
	return;
}
#ifdef MODULE_LICENSE
MODULE_LICENSE("GPL");
#endif

EXPORT_NO_SYMBOLS;
