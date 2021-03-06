#ifndef foodbusinternalhfoo
#define foodbusinternalhfoo

/* $Id$ */

/***
  This file is part of avahi.
 
  avahi is free software; you can redistribute it and/or modify it
  under the terms of the GNU Lesser General Public License as
  published by the Free Software Foundation; either version 2.1 of the
  License, or (at your option) any later version.
 
  avahi is distributed in the hope that it will be useful, but WITHOUT
  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
  or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General
  Public License for more details.
 
  You should have received a copy of the GNU Lesser General Public
  License along with avahi; if not, write to the Free Software
  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
  USA.
***/


#include <dbus/dbus.h>

#include <avahi-core/core.h>
#include <avahi-core/publish.h>
#include <avahi-core/lookup.h>

#include <avahi-common/llist.h>

typedef struct Server Server;
typedef struct Client Client;
typedef struct EntryGroupInfo EntryGroupInfo;
typedef struct SyncHostNameResolverInfo SyncHostNameResolverInfo;
typedef struct AsyncHostNameResolverInfo AsyncHostNameResolverInfo;
typedef struct SyncAddressResolverInfo SyncAddressResolverInfo;
typedef struct AsyncAddressResolverInfo AsyncAddressResolverInfo;
typedef struct DomainBrowserInfo DomainBrowserInfo;
typedef struct ServiceTypeBrowserInfo ServiceTypeBrowserInfo;
typedef struct ServiceBrowserInfo ServiceBrowserInfo;
typedef struct SyncServiceResolverInfo SyncServiceResolverInfo;
typedef struct AsyncServiceResolverInfo AsyncServiceResolverInfo;
typedef struct RecordBrowserInfo RecordBrowserInfo;

#define CLIENTS_MAX 256
#define OBJECTS_PER_CLIENT_MAX 250
#define ENTRIES_PER_ENTRY_GROUP_MAX 20

struct EntryGroupInfo {
    unsigned id;
    Client *client;
    AvahiSEntryGroup *entry_group;
    char *path;

    int n_entries;
    
    AVAHI_LLIST_FIELDS(EntryGroupInfo, entry_groups);
};

struct SyncHostNameResolverInfo {
    Client *client;
    AvahiSHostNameResolver *host_name_resolver;
    DBusMessage *message;

    AVAHI_LLIST_FIELDS(SyncHostNameResolverInfo, sync_host_name_resolvers);
};

struct AsyncHostNameResolverInfo {
    unsigned id;
    Client *client;
    AvahiSHostNameResolver *host_name_resolver;
    char *path;

    AVAHI_LLIST_FIELDS(AsyncHostNameResolverInfo, async_host_name_resolvers);
};

struct SyncAddressResolverInfo {
    Client *client;
    AvahiSAddressResolver *address_resolver;
    DBusMessage *message;

    AVAHI_LLIST_FIELDS(SyncAddressResolverInfo, sync_address_resolvers);
};

struct AsyncAddressResolverInfo {
    unsigned id;
    Client *client;
    AvahiSAddressResolver *address_resolver;
    char *path;

    AVAHI_LLIST_FIELDS(AsyncAddressResolverInfo, async_address_resolvers);
};

struct DomainBrowserInfo {
    unsigned id;
    Client *client;
    AvahiSDomainBrowser *domain_browser;
    char *path;

    AVAHI_LLIST_FIELDS(DomainBrowserInfo, domain_browsers);
};

struct ServiceTypeBrowserInfo {
    unsigned id;
    Client *client;
    AvahiSServiceTypeBrowser *service_type_browser;
    char *path;

    AVAHI_LLIST_FIELDS(ServiceTypeBrowserInfo, service_type_browsers);
};

struct ServiceBrowserInfo {
    unsigned id;
    Client *client;
    AvahiSServiceBrowser *service_browser;
    char *path;

    AVAHI_LLIST_FIELDS(ServiceBrowserInfo, service_browsers);
};

struct SyncServiceResolverInfo {
    Client *client;
    AvahiSServiceResolver *service_resolver;
    DBusMessage *message;

    AVAHI_LLIST_FIELDS(SyncServiceResolverInfo, sync_service_resolvers);
};

struct AsyncServiceResolverInfo {
    unsigned id;
    Client *client;
    AvahiSServiceResolver *service_resolver;
    char *path;

    AVAHI_LLIST_FIELDS(AsyncServiceResolverInfo, async_service_resolvers);
};

struct RecordBrowserInfo {
    unsigned id;
    Client *client;
    AvahiSRecordBrowser *record_browser;
    char *path;

    AVAHI_LLIST_FIELDS(RecordBrowserInfo, record_browsers);
};

struct Client {
    unsigned id;
    char *name;
    unsigned current_id;
    int n_objects;
    
    AVAHI_LLIST_FIELDS(Client, clients);
    AVAHI_LLIST_HEAD(EntryGroupInfo, entry_groups);
    AVAHI_LLIST_HEAD(SyncHostNameResolverInfo, sync_host_name_resolvers);
    AVAHI_LLIST_HEAD(AsyncHostNameResolverInfo, async_host_name_resolvers);
    AVAHI_LLIST_HEAD(SyncAddressResolverInfo, sync_address_resolvers);
    AVAHI_LLIST_HEAD(AsyncAddressResolverInfo, async_address_resolvers);
    AVAHI_LLIST_HEAD(DomainBrowserInfo, domain_browsers);
    AVAHI_LLIST_HEAD(ServiceTypeBrowserInfo, service_type_browsers);
    AVAHI_LLIST_HEAD(ServiceBrowserInfo, service_browsers);
    AVAHI_LLIST_HEAD(SyncServiceResolverInfo, sync_service_resolvers);
    AVAHI_LLIST_HEAD(AsyncServiceResolverInfo, async_service_resolvers);
    AVAHI_LLIST_HEAD(RecordBrowserInfo, record_browsers);
};

struct Server {
    DBusConnection *bus;
    AVAHI_LLIST_HEAD(Client, clients);
    int n_clients;
    unsigned current_id;
};

extern Server *server;

void avahi_dbus_entry_group_free(EntryGroupInfo *i);
void avahi_dbus_entry_group_callback(AvahiServer *s, AvahiSEntryGroup *g, AvahiEntryGroupState state, void* userdata);
DBusHandlerResult avahi_dbus_msg_entry_group_impl(DBusConnection *c, DBusMessage *m, void *userdata);

void avahi_dbus_sync_host_name_resolver_free(SyncHostNameResolverInfo *i);
void avahi_dbus_sync_host_name_resolver_callback(AvahiSHostNameResolver *r, AvahiIfIndex interface, AvahiProtocol protocol, AvahiResolverEvent event, const char *host_name, const AvahiAddress *a, AvahiLookupResultFlags flags, void* userdata);

void avahi_dbus_async_host_name_resolver_free(AsyncHostNameResolverInfo *i);
void avahi_dbus_async_host_name_resolver_callback(AvahiSHostNameResolver *r, AvahiIfIndex interface, AvahiProtocol protocol, AvahiResolverEvent event, const char *host_name, const AvahiAddress *a, AvahiLookupResultFlags flags, void* userdata);
DBusHandlerResult avahi_dbus_msg_async_host_name_resolver_impl(DBusConnection *c, DBusMessage *m, void *userdata);

void avahi_dbus_sync_address_resolver_free(SyncAddressResolverInfo *i);
void avahi_dbus_sync_address_resolver_callback(AvahiSAddressResolver *r, AvahiIfIndex interface, AvahiProtocol protocol, AvahiResolverEvent event, const AvahiAddress *address, const char *host_name, AvahiLookupResultFlags flags, void* userdata);

void avahi_dbus_async_address_resolver_free(AsyncAddressResolverInfo *i);
void avahi_dbus_async_address_resolver_callback(AvahiSAddressResolver *r, AvahiIfIndex interface, AvahiProtocol protocol, AvahiResolverEvent event, const AvahiAddress *address, const char *host_name, AvahiLookupResultFlags flags, void* userdata);
DBusHandlerResult avahi_dbus_msg_async_address_resolver_impl(DBusConnection *c, DBusMessage *m, void *userdata);

void avahi_dbus_domain_browser_free(DomainBrowserInfo *i);
DBusHandlerResult avahi_dbus_msg_domain_browser_impl(DBusConnection *c, DBusMessage *m, void *userdata);
void avahi_dbus_domain_browser_callback(AvahiSDomainBrowser *b, AvahiIfIndex interface, AvahiProtocol protocol, AvahiBrowserEvent event, const char *domain, AvahiLookupResultFlags flags,  void* userdata);

void avahi_dbus_service_type_browser_free(ServiceTypeBrowserInfo *i);
DBusHandlerResult avahi_dbus_msg_service_type_browser_impl(DBusConnection *c, DBusMessage *m, void *userdata);
void avahi_dbus_service_type_browser_callback(AvahiSServiceTypeBrowser *b, AvahiIfIndex interface, AvahiProtocol protocol, AvahiBrowserEvent event, const char *type, const char *domain, AvahiLookupResultFlags flags, void* userdata);

void avahi_dbus_service_browser_free(ServiceBrowserInfo *i);
DBusHandlerResult avahi_dbus_msg_service_browser_impl(DBusConnection *c, DBusMessage *m, void *userdata);
void avahi_dbus_service_browser_callback(AvahiSServiceBrowser *b, AvahiIfIndex interface, AvahiProtocol protocol, AvahiBrowserEvent event, const char *name, const char *type, const char *domain, AvahiLookupResultFlags flags, void* userdata);

void avahi_dbus_sync_service_resolver_free(SyncServiceResolverInfo *i);

void avahi_dbus_sync_service_resolver_callback(
    AvahiSServiceResolver *r,
    AvahiIfIndex interface,
    AvahiProtocol protocol,
    AvahiResolverEvent event,
    const char *name,
    const char *type,
    const char *domain,
    const char *host_name,
    const AvahiAddress *a,
    uint16_t port,
    AvahiStringList *txt,
    AvahiLookupResultFlags flags, 
    void* userdata);

void avahi_dbus_async_service_resolver_free(AsyncServiceResolverInfo *i);
void avahi_dbus_async_service_resolver_callback(
    AvahiSServiceResolver *r,
    AvahiIfIndex interface,
    AvahiProtocol protocol,
    AvahiResolverEvent event,
    const char *name,
    const char *type,
    const char *domain,
    const char *host_name,
    const AvahiAddress *a,
    uint16_t port,
    AvahiStringList *txt,
    AvahiLookupResultFlags flags, 
    void* userdata);

DBusHandlerResult avahi_dbus_msg_async_service_resolver_impl(DBusConnection *c, DBusMessage *m, void *userdata);

void avahi_dbus_record_browser_free(RecordBrowserInfo *i);
DBusHandlerResult avahi_dbus_msg_record_browser_impl(DBusConnection *c, DBusMessage *m, void *userdata);
void avahi_dbus_record_browser_callback(AvahiSRecordBrowser *b, AvahiIfIndex interface, AvahiProtocol protocol, AvahiBrowserEvent event, AvahiRecord *record, AvahiLookupResultFlags flags, void* userdata);

#endif
