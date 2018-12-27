.class public Lorg/apache/cordova/contacts/ContactAccessorSdk5;
.super Lorg/apache/cordova/contacts/ContactAccessor;
.source "ContactAccessorSdk5.java"


# static fields
.field private static final EMAIL_REGEXP:Ljava/lang/String; = ".+@.+\\.+.+"

.field private static final MAX_PHOTO_SIZE:J = 0x100000L

.field private static final dbMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    .line 87
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "contact_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "displayName"

    const-string v2, "display_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.formatted"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.familyName"

    const-string v2, "data3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.givenName"

    const-string v2, "data2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.middleName"

    const-string v2, "data5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.honorificPrefix"

    const-string v2, "data4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.honorificSuffix"

    const-string v2, "data6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "nickname"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "phoneNumbers"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "phoneNumbers.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "emails"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "emails.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.formatted"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.streetAddress"

    const-string v2, "data4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.locality"

    const-string v2, "data7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.region"

    const-string v2, "data8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.postalCode"

    const-string v2, "data9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.country"

    const-string v2, "data10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "ims"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "ims.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.name"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.department"

    const-string v2, "data5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.title"

    const-string v2, "data4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "birthday"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "note"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "photos.value"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "urls"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "urls.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/CordovaInterface;)V
    .locals 0
    .param p1, "context"    # Lorg/apache/cordova/CordovaInterface;

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/apache/cordova/contacts/ContactAccessor;-><init>()V

    .line 126
    iput-object p1, p0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    .line 127
    return-void
.end method

.method private addressQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 759
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 761
    .local v0, "address":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 762
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 763
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getAddressType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 764
    const-string v2, "formatted"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 765
    const-string v2, "streetAddress"

    const-string v3, "data4"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    const-string v2, "locality"

    const-string v3, "data7"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 767
    const-string v2, "region"

    const-string v3, "data8"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 768
    const-string v2, "postalCode"

    const-string v3, "data9"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 769
    const-string v2, "country"

    const-string v3, "data10"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_0
    return-object v0

    .line 770
    :catch_0
    move-exception v1

    .line 771
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private buildIdClause(Ljava/util/Set;Ljava/lang/String;)Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    .locals 5
    .param p2, "searchTerm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;

    invoke-direct {v2, p0}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;-><init>(Lorg/apache/cordova/contacts/ContactAccessor;)V

    .line 474
    .local v2, "options":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    const-string v3, "%"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    const-string v3, "(contact_id LIKE ? )"

    invoke-virtual {v2, v3}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 476
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    .line 495
    :goto_0
    return-object v2

    .line 481
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 482
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "("

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 490
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contact_id IN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 493
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 487
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private buildWhereClause(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    .locals 13
    .param p1, "fields"    # Lorg/json/JSONArray;
    .param p2, "searchTerm"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 550
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v6, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v7, "whereArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;

    invoke-direct {v3, p0}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;-><init>(Lorg/apache/cordova/contacts/ContactAccessor;)V

    .line 558
    .local v3, "options":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    invoke-direct {p0, p1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isWildCardSearch(Lorg/json/JSONArray;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 560
    const-string v8, "%"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 561
    const-string v8, "(display_name LIKE ? )"

    invoke-virtual {v3, v8}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 562
    new-array v8, v11, [Ljava/lang/String;

    aput-object p2, v8, v12

    invoke-virtual {v3, v8}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    .line 710
    :goto_0
    return-object v3

    .line 566
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "displayName"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "name"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 569
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 568
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    const-string v8, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "nickname"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 573
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 572
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    const-string v8, "vnd.android.cursor.item/nickname"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "phoneNumbers"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 577
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 576
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "emails"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 581
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 580
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "addresses"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 585
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 584
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    const-string v8, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "ims"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 589
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 588
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    const-string v8, "vnd.android.cursor.item/im"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "organizations"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 593
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 592
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    const-string v8, "vnd.android.cursor.item/organization"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "note"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 597
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 596
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    const-string v8, "vnd.android.cursor.item/note"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "urls"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 601
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 600
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    const-string v8, "vnd.android.cursor.item/website"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_1
    const-string v8, "%"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 611
    const-string v8, "(display_name LIKE ? )"

    invoke-virtual {v3, v8}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 612
    new-array v8, v11, [Ljava/lang/String;

    aput-object p2, v8, v12

    invoke-virtual {v3, v8}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lt v1, v8, :cond_3

    .line 694
    :goto_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 695
    .local v4, "selection":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v1, v8, :cond_f

    .line 701
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v5, v8, [Ljava/lang/String;

    .line 705
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v1, v8, :cond_11

    .line 708
    invoke-virtual {v3, v5}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 620
    .end local v4    # "selection":Ljava/lang/StringBuffer;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "key":Ljava/lang/String;
    const-string v8, "id"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 623
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    const/4 v8, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 626
    :cond_5
    const-string v8, "displayName"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 627
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 689
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Lorg/json/JSONException;
    const-string v8, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 630
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v8, "name"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 631
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 632
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 631
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    const-string v8, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 636
    :cond_7
    const-string v8, "nickname"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 637
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 638
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 637
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    const-string v8, "vnd.android.cursor.item/nickname"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 642
    :cond_8
    const-string v8, "phoneNumbers"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 643
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 644
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 643
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 648
    :cond_9
    const-string v8, "emails"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 649
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 650
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 649
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 654
    :cond_a
    const-string v8, "addresses"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 655
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 656
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 655
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    const-string v8, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 660
    :cond_b
    const-string v8, "ims"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 661
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 662
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 661
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    const-string v8, "vnd.android.cursor.item/im"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 666
    :cond_c
    const-string v8, "organizations"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 667
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 668
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 667
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    const-string v8, "vnd.android.cursor.item/organization"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 676
    :cond_d
    const-string v8, "note"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 677
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 678
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 677
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    const-string v8, "vnd.android.cursor.item/note"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 682
    :cond_e
    const-string v8, "urls"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 683
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 684
    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 683
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    const-string v8, "vnd.android.cursor.item/website"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 696
    .end local v2    # "key":Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/StringBuffer;
    :cond_f
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v1, v8, :cond_10

    .line 698
    const-string v8, " OR "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 706
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_11
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v5, v1

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4
.end method

.method private createNewContact(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 30
    .param p1, "contact"    # Lorg/json/JSONObject;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 1624
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1627
    .local v18, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v27, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1628
    const-string v28, "account_type"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1629
    const-string v28, "account_name"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1630
    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    .line 1627
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1634
    :try_start_0
    const-string v27, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 1635
    .local v14, "name":Lorg/json/JSONObject;
    const-string v27, "displayName"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1636
    .local v7, "displayName":Ljava/lang/String;
    if-nez v7, :cond_0

    if-eqz v14, :cond_1

    .line 1637
    :cond_0
    sget-object v27, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1638
    const-string v28, "raw_contact_id"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1639
    const-string v28, "mimetype"

    const-string v29, "vnd.android.cursor.item/name"

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1640
    const-string v28, "data1"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1641
    const-string v28, "data3"

    const-string v29, "familyName"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1642
    const-string v28, "data5"

    const-string v29, "middleName"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1643
    const-string v28, "data2"

    const-string v29, "givenName"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1644
    const-string v28, "data4"

    const-string v29, "honorificPrefix"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1645
    const-string v28, "data6"

    const-string v29, "honorificSuffix"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1646
    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    .line 1637
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1653
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v14    # "name":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    const/16 v22, 0x0

    .line 1655
    .local v22, "phones":Lorg/json/JSONArray;
    :try_start_1
    const-string v27, "phoneNumbers"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 1656
    if-eqz v22, :cond_2

    .line 1657
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v27

    move/from16 v0, v27

    if-lt v11, v0, :cond_d

    .line 1667
    .end local v11    # "i":I
    :cond_2
    :goto_2
    const/4 v10, 0x0

    .line 1669
    .local v10, "emails":Lorg/json/JSONArray;
    :try_start_2
    const-string v27, "emails"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1670
    if-eqz v10, :cond_3

    .line 1671
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v27

    move/from16 v0, v27

    if-lt v11, v0, :cond_e

    .line 1681
    .end local v11    # "i":I
    :cond_3
    :goto_4
    const/4 v4, 0x0

    .line 1683
    .local v4, "addresses":Lorg/json/JSONArray;
    :try_start_3
    const-string v27, "addresses"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1684
    if-eqz v4, :cond_4

    .line 1685
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v27

    move/from16 v0, v27

    if-lt v11, v0, :cond_f

    .line 1695
    .end local v11    # "i":I
    :cond_4
    :goto_6
    const/16 v20, 0x0

    .line 1697
    .local v20, "organizations":Lorg/json/JSONArray;
    :try_start_4
    const-string v27, "organizations"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 1698
    if-eqz v20, :cond_5

    .line 1699
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v27

    move/from16 v0, v27

    if-lt v11, v0, :cond_10

    .line 1709
    .end local v11    # "i":I
    :cond_5
    :goto_8
    const/4 v13, 0x0

    .line 1711
    .local v13, "ims":Lorg/json/JSONArray;
    :try_start_5
    const-string v27, "ims"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 1712
    if-eqz v13, :cond_6

    .line 1713
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_9
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v27

    move/from16 v0, v27

    if-lt v11, v0, :cond_11

    .line 1723
    .end local v11    # "i":I
    :cond_6
    :goto_a
    const-string v27, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1724
    .local v17, "note":Ljava/lang/String;
    if-eqz v17, :cond_7

    .line 1725
    sget-object v27, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1726
    const-string v28, "raw_contact_id"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1727
    const-string v28, "mimetype"

    const-string v29, "vnd.android.cursor.item/note"

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1728
    const-string v28, "data1"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1729
    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    .line 1725
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    :cond_7
    const-string v27, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1734
    .local v16, "nickname":Ljava/lang/String;
    if-eqz v16, :cond_8

    .line 1735
    sget-object v27, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1736
    const-string v28, "raw_contact_id"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1737
    const-string v28, "mimetype"

    const-string v29, "vnd.android.cursor.item/nickname"

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1738
    const-string v28, "data1"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1739
    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    .line 1735
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1743
    :cond_8
    const/16 v26, 0x0

    .line 1745
    .local v26, "websites":Lorg/json/JSONArray;
    :try_start_6
    const-string v27, "urls"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v26

    .line 1746
    if-eqz v26, :cond_9

    .line 1747
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_b
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v27

    move/from16 v0, v27

    if-lt v11, v0, :cond_12

    .line 1757
    .end local v11    # "i":I
    :cond_9
    :goto_c
    const-string v27, "birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1758
    .local v5, "birthday":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 1759
    sget-object v27, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1760
    const-string v28, "raw_contact_id"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1761
    const-string v28, "mimetype"

    const-string v29, "vnd.android.cursor.item/contact_event"

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1762
    const-string v28, "data2"

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1763
    const-string v28, "data1"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    .line 1764
    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    .line 1759
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1768
    :cond_a
    const/16 v24, 0x0

    .line 1770
    .local v24, "photos":Lorg/json/JSONArray;
    :try_start_7
    const-string v27, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 1771
    if-eqz v24, :cond_b

    .line 1772
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_d
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v27

    move/from16 v0, v27

    if-lt v11, v0, :cond_13

    .line 1781
    .end local v11    # "i":I
    :cond_b
    :goto_e
    const/4 v15, 0x0

    .line 1784
    .local v15, "newId":Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "com.android.contacts"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    .line 1785
    .local v6, "cpResults":[Landroid/content/ContentProviderResult;
    array-length v0, v6

    move/from16 v27, v0

    if-ltz v27, :cond_c

    .line 1786
    const/16 v27, 0x0

    aget-object v27, v6, v27

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_9

    move-result-object v15

    .line 1793
    .end local v6    # "cpResults":[Landroid/content/ContentProviderResult;
    :cond_c
    :goto_f
    return-object v15

    .line 1648
    .end local v4    # "addresses":Lorg/json/JSONArray;
    .end local v5    # "birthday":Ljava/lang/String;
    .end local v10    # "emails":Lorg/json/JSONArray;
    .end local v13    # "ims":Lorg/json/JSONArray;
    .end local v15    # "newId":Ljava/lang/String;
    .end local v16    # "nickname":Ljava/lang/String;
    .end local v17    # "note":Ljava/lang/String;
    .end local v20    # "organizations":Lorg/json/JSONArray;
    .end local v22    # "phones":Lorg/json/JSONArray;
    .end local v24    # "photos":Lorg/json/JSONArray;
    .end local v26    # "websites":Lorg/json/JSONArray;
    :catch_0
    move-exception v8

    .line 1649
    .local v8, "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get name object"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1658
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v11    # "i":I
    .restart local v22    # "phones":Lorg/json/JSONArray;
    :cond_d
    :try_start_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/json/JSONObject;

    .line 1659
    .local v21, "phone":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->insertPhone(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    .line 1657
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1662
    .end local v11    # "i":I
    .end local v21    # "phone":Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    .line 1663
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get phone numbers"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1672
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v10    # "emails":Lorg/json/JSONArray;
    .restart local v11    # "i":I
    :cond_e
    :try_start_a
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 1673
    .local v9, "email":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->insertEmail(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2

    .line 1671
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 1676
    .end local v9    # "email":Lorg/json/JSONObject;
    .end local v11    # "i":I
    :catch_2
    move-exception v8

    .line 1677
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get emails"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1686
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v4    # "addresses":Lorg/json/JSONArray;
    .restart local v11    # "i":I
    :cond_f
    :try_start_b
    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1687
    .local v3, "address":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->insertAddress(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3

    .line 1685
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 1690
    .end local v3    # "address":Lorg/json/JSONObject;
    .end local v11    # "i":I
    :catch_3
    move-exception v8

    .line 1691
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get addresses"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1700
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v11    # "i":I
    .restart local v20    # "organizations":Lorg/json/JSONArray;
    :cond_10
    :try_start_c
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    .line 1701
    .local v19, "org":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->insertOrganization(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_4

    .line 1699
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .line 1704
    .end local v11    # "i":I
    .end local v19    # "org":Lorg/json/JSONObject;
    :catch_4
    move-exception v8

    .line 1705
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get organizations"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1714
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v11    # "i":I
    .restart local v13    # "ims":Lorg/json/JSONArray;
    :cond_11
    :try_start_d
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    .line 1715
    .local v12, "im":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->insertIm(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_5

    .line 1713
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    .line 1718
    .end local v11    # "i":I
    .end local v12    # "im":Lorg/json/JSONObject;
    :catch_5
    move-exception v8

    .line 1719
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get emails"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1748
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v11    # "i":I
    .restart local v16    # "nickname":Ljava/lang/String;
    .restart local v17    # "note":Ljava/lang/String;
    .restart local v26    # "websites":Lorg/json/JSONArray;
    :cond_12
    :try_start_e
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/json/JSONObject;

    .line 1749
    .local v25, "website":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->insertWebsite(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_6

    .line 1747
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b

    .line 1752
    .end local v11    # "i":I
    .end local v25    # "website":Lorg/json/JSONObject;
    :catch_6
    move-exception v8

    .line 1753
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get websites"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1773
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v5    # "birthday":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v24    # "photos":Lorg/json/JSONArray;
    :cond_13
    :try_start_f
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/json/JSONObject;

    .line 1774
    .local v23, "photo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->insertPhoto(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_7

    .line 1772
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_d

    .line 1777
    .end local v11    # "i":I
    .end local v23    # "photo":Lorg/json/JSONObject;
    :catch_7
    move-exception v8

    .line 1778
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get photos"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1788
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v15    # "newId":Ljava/lang/String;
    :catch_8
    move-exception v8

    .line 1789
    .local v8, "e":Landroid/os/RemoteException;
    const-string v27, "ContactsAccessor"

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 1790
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_9
    move-exception v8

    .line 1791
    .local v8, "e":Landroid/content/OperationApplicationException;
    const-string v27, "ContactsAccessor"

    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f
.end method

.method private emailQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 846
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 848
    .local v1, "email":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 849
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 850
    const-string v2, "value"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 851
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :goto_0
    return-object v1

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getAddressType(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2083
    const/4 v0, 0x3

    .line 2084
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 2085
    const-string v1, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2086
    const/4 v0, 0x2

    .line 2095
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 2088
    .restart local v0    # "type":I
    :cond_1
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2089
    const/4 v0, 0x3

    goto :goto_0

    .line 2091
    :cond_2
    const-string v1, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2092
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getAddressType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2105
    packed-switch p1, :pswitch_data_0

    .line 2114
    const-string v0, "other"

    .line 2117
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2107
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "home"

    .line 2108
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2110
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "work"

    .line 2111
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getContactType(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1985
    const/4 v0, 0x3

    .line 1986
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 1987
    const-string v1, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1988
    const/4 v0, 0x1

    .line 2003
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 1990
    .restart local v0    # "type":I
    :cond_1
    const-string v1, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1991
    const/4 v0, 0x2

    goto :goto_0

    .line 1993
    :cond_2
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1994
    const/4 v0, 0x3

    goto :goto_0

    .line 1996
    :cond_3
    const-string v1, "mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1997
    const/4 v0, 0x4

    goto :goto_0

    .line 1999
    :cond_4
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2000
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContactType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2013
    packed-switch p1, :pswitch_data_0

    .line 2028
    :pswitch_0
    const-string v0, "other"

    .line 2031
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2015
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "custom"

    .line 2016
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2018
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "home"

    .line 2019
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2021
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "work"

    .line 2022
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2024
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "mobile"

    .line 2025
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2013
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getImType(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2126
    const/4 v0, -0x1

    .line 2127
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 2128
    const-string v1, "aim"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2129
    const/4 v0, 0x0

    .line 2156
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 2131
    .restart local v0    # "type":I
    :cond_1
    const-string v1, "google talk"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2132
    const/4 v0, 0x5

    goto :goto_0

    .line 2134
    :cond_2
    const-string v1, "icq"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2135
    const/4 v0, 0x6

    goto :goto_0

    .line 2137
    :cond_3
    const-string v1, "jabber"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2138
    const/4 v0, 0x7

    goto :goto_0

    .line 2140
    :cond_4
    const-string v1, "msn"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2141
    const/4 v0, 0x1

    goto :goto_0

    .line 2143
    :cond_5
    const-string v1, "netmeeting"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2144
    const/16 v0, 0x8

    goto :goto_0

    .line 2146
    :cond_6
    const-string v1, "qq"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2147
    const/4 v0, 0x4

    goto :goto_0

    .line 2149
    :cond_7
    const-string v1, "skype"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2150
    const/4 v0, 0x3

    goto :goto_0

    .line 2152
    :cond_8
    const-string v1, "yahoo"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2153
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getImType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2167
    packed-switch p1, :pswitch_data_0

    .line 2196
    const-string v0, "custom"

    .line 2199
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2169
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "AIM"

    .line 2170
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2172
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Google Talk"

    .line 2173
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2175
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "ICQ"

    .line 2176
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2178
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "Jabber"

    .line 2179
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2181
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "MSN"

    .line 2182
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2184
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_5
    const-string v0, "NetMeeting"

    .line 2185
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2187
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_6
    const-string v0, "QQ"

    .line 2188
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2190
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_7
    const-string v0, "Skype"

    .line 2191
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2193
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_8
    const-string v0, "Yahoo"

    .line 2194
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private getOrgType(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2040
    const/4 v0, 0x2

    .line 2041
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 2042
    const-string v1, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2043
    const/4 v0, 0x1

    .line 2052
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 2045
    .restart local v0    # "type":I
    :cond_1
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2046
    const/4 v0, 0x2

    goto :goto_0

    .line 2048
    :cond_2
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2049
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOrgType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2062
    packed-switch p1, :pswitch_data_0

    .line 2071
    const-string v0, "other"

    .line 2074
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2064
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "custom"

    .line 2065
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2067
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "work"

    .line 2068
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2062
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1603
    const-string v2, "content:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1604
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1605
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1612
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 1607
    :cond_0
    const-string v2, "http:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "file:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1608
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1609
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 1612
    .end local v1    # "url":Ljava/net/URL;
    :cond_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPhoneType(Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    .line 1834
    const/4 v0, 0x7

    .line 1835
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 1836
    const-string v2, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1837
    const/4 v0, 0x1

    .line 1903
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 1839
    .restart local v0    # "type":I
    :cond_1
    const-string v2, "mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1840
    const/4 v0, 0x2

    goto :goto_0

    .line 1842
    :cond_2
    const-string v2, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1843
    const/4 v0, 0x3

    goto :goto_0

    .line 1845
    :cond_3
    const-string v2, "work fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 1846
    goto :goto_0

    .line 1848
    :cond_4
    const-string v2, "home fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1849
    const/4 v0, 0x5

    goto :goto_0

    .line 1851
    :cond_5
    const-string v2, "fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 1852
    goto :goto_0

    .line 1854
    :cond_6
    const-string v1, "pager"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1855
    const/4 v0, 0x6

    goto :goto_0

    .line 1857
    :cond_7
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1858
    const/4 v0, 0x7

    goto :goto_0

    .line 1860
    :cond_8
    const-string v1, "car"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1861
    const/16 v0, 0x9

    goto :goto_0

    .line 1863
    :cond_9
    const-string v1, "company main"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1864
    const/16 v0, 0xa

    goto :goto_0

    .line 1866
    :cond_a
    const-string v1, "isdn"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1867
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 1869
    :cond_b
    const-string v1, "main"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1870
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 1872
    :cond_c
    const-string v1, "other fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1873
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 1875
    :cond_d
    const-string v1, "radio"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1876
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 1878
    :cond_e
    const-string v1, "telex"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1879
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 1881
    :cond_f
    const-string v1, "work mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1882
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 1884
    :cond_10
    const-string v1, "work pager"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1885
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 1887
    :cond_11
    const-string v1, "assistant"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1888
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 1890
    :cond_12
    const-string v1, "mms"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1891
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 1893
    :cond_13
    const-string v1, "callback"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1894
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 1896
    :cond_14
    const-string v1, "tty ttd"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1897
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 1899
    :cond_15
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1900
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getPhoneType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1913
    packed-switch p1, :pswitch_data_0

    .line 1973
    :pswitch_0
    const-string v0, "other"

    .line 1976
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1915
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "custom"

    .line 1916
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1918
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "home fax"

    .line 1919
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1921
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "work fax"

    .line 1922
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1924
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "home"

    .line 1925
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1927
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_5
    const-string v0, "mobile"

    .line 1928
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1930
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_6
    const-string v0, "pager"

    .line 1931
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1933
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_7
    const-string v0, "work"

    .line 1934
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1936
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_8
    const-string v0, "callback"

    .line 1937
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1939
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_9
    const-string v0, "car"

    .line 1940
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1942
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_a
    const-string v0, "company main"

    .line 1943
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1945
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_b
    const-string v0, "other fax"

    .line 1946
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1948
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_c
    const-string v0, "radio"

    .line 1949
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1951
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_d
    const-string v0, "telex"

    .line 1952
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1954
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_e
    const-string v0, "tty tdd"

    .line 1955
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1957
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_f
    const-string v0, "work mobile"

    .line 1958
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1960
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_10
    const-string v0, "work pager"

    .line 1961
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1963
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_11
    const-string v0, "assistant"

    .line 1964
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1966
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_12
    const-string v0, "mms"

    .line 1967
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1969
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_13
    const-string v0, "isdn"

    .line 1970
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1913
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_13
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private getPhotoBytes(Ljava/lang/String;)[B
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1573
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1575
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 1576
    .local v1, "bytesRead":I
    const-wide/16 v5, 0x0

    .line 1577
    .local v5, "totalBytesRead":J
    const/16 v7, 0x2000

    :try_start_0
    new-array v2, v7, [B

    .line 1578
    .local v2, "data":[B
    invoke-direct {p0, p1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 1580
    .local v4, "in":Ljava/io/InputStream;
    :goto_0
    const/4 v7, 0x0

    array-length v8, v2

    invoke-virtual {v4, v2, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    const-wide/32 v7, 0x100000

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 1585
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1586
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1592
    .end local v2    # "data":[B
    .end local v4    # "in":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 1581
    .restart local v2    # "data":[B
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v0, v2, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1582
    int-to-long v7, v1

    add-long/2addr v5, v7

    goto :goto_0

    .line 1587
    .end local v2    # "data":[B
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 1588
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v7, "ContactsAccessor"

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1589
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1590
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "ContactsAccessor"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private imQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 864
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 866
    .local v1, "im":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 867
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 868
    const-string v2, "value"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 869
    const-string v2, "type"

    const-string v3, "data5"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getImType(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_0
    return-object v1

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private insertAddress(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "address"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1503
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1504
    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1505
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1506
    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getAddressType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1507
    const-string v1, "data1"

    const-string v2, "formatted"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1508
    const-string v1, "data4"

    const-string v2, "streetAddress"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1509
    const-string v1, "data7"

    const-string v2, "locality"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1510
    const-string v1, "data8"

    const-string v2, "region"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1511
    const-string v1, "data9"

    const-string v2, "postalCode"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1512
    const-string v1, "data10"

    const-string v2, "country"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1513
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1503
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    return-void
.end method

.method private insertEmail(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "email"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1524
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1525
    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1526
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1527
    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1528
    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1529
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1524
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    return-void
.end method

.method private insertIm(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "im"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1469
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1470
    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1471
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1472
    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1473
    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getImType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1474
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1469
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    return-void
.end method

.method private insertOrganization(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "org"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1485
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1486
    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1487
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1488
    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getOrgType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1489
    const-string v1, "data5"

    const-string v2, "department"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1490
    const-string v1, "data1"

    const-string v2, "name"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1491
    const-string v1, "data4"

    const-string v2, "title"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1492
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1485
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    return-void
.end method

.method private insertPhone(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "phone"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1540
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1541
    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1542
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1543
    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1544
    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getPhoneType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1545
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1540
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    return-void
.end method

.method private insertPhoto(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 4
    .param p2, "photo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1556
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v1, "value"

    invoke-virtual {p0, p2, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getPhotoBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1557
    .local v0, "bytes":[B
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1558
    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1559
    const-string v2, "is_super_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1560
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1561
    const-string v2, "data15"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1562
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 1557
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    return-void
.end method

.method private insertWebsite(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "website"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1454
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1455
    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1456
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1457
    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1458
    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1459
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1454
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    return-void
.end method

.method private isWildCardSearch(Lorg/json/JSONArray;)Z
    .locals 5
    .param p1, "fields"    # Lorg/json/JSONArray;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 721
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 723
    :try_start_0
    const-string v3, "*"

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 730
    :goto_0
    return v1

    .line 726
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move v1, v2

    .line 727
    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    move v1, v2

    .line 730
    goto :goto_0
.end method

.method private modifyContact(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 50
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "contact"    # Lorg/json/JSONObject;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountName"    # Ljava/lang/String;

    .prologue
    .line 990
    const-string v44, "rawId"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v39

    .line 993
    .local v39, "rawId":I
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 996
    .local v29, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v44, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 997
    const-string v45, "account_type"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 998
    const-string v45, "account_name"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 999
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 996
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    :try_start_0
    const-string v44, "displayName"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1005
    .local v10, "displayName":Ljava/lang/String;
    const-string v44, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 1006
    .local v26, "name":Lorg/json/JSONObject;
    if-nez v10, :cond_0

    if-eqz v26, :cond_7

    .line 1007
    :cond_0
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1008
    const-string v45, "contact_id=? AND mimetype=?"

    .line 1010
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object p1, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/name"

    aput-object v48, v46, v47

    .line 1008
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1012
    .local v7, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v10, :cond_1

    .line 1013
    const-string v44, "data1"

    move-object/from16 v0, v44

    invoke-virtual {v7, v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1016
    :cond_1
    const-string v44, "familyName"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1017
    .local v17, "familyName":Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 1018
    const-string v44, "data3"

    move-object/from16 v0, v44

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1020
    :cond_2
    const-string v44, "middleName"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1021
    .local v25, "middleName":Ljava/lang/String;
    if-eqz v25, :cond_3

    .line 1022
    const-string v44, "data5"

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1024
    :cond_3
    const-string v44, "givenName"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1025
    .local v18, "givenName":Ljava/lang/String;
    if-eqz v18, :cond_4

    .line 1026
    const-string v44, "data2"

    move-object/from16 v0, v44

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1028
    :cond_4
    const-string v44, "honorificPrefix"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1029
    .local v19, "honorificPrefix":Ljava/lang/String;
    if-eqz v19, :cond_5

    .line 1030
    const-string v44, "data4"

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1032
    :cond_5
    const-string v44, "honorificSuffix"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1033
    .local v20, "honorificSuffix":Ljava/lang/String;
    if-eqz v20, :cond_6

    .line 1034
    const-string v44, "data6"

    move-object/from16 v0, v44

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1037
    :cond_6
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    .end local v7    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v10    # "displayName":Ljava/lang/String;
    .end local v17    # "familyName":Ljava/lang/String;
    .end local v18    # "givenName":Ljava/lang/String;
    .end local v19    # "honorificPrefix":Ljava/lang/String;
    .end local v20    # "honorificSuffix":Ljava/lang/String;
    .end local v25    # "middleName":Ljava/lang/String;
    .end local v26    # "name":Lorg/json/JSONObject;
    :cond_7
    :goto_0
    const/16 v35, 0x0

    .line 1046
    .local v35, "phones":Lorg/json/JSONArray;
    :try_start_1
    const-string v44, "phoneNumbers"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v35

    .line 1047
    if-eqz v35, :cond_8

    .line 1049
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v44

    if-nez v44, :cond_11

    .line 1050
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1051
    const-string v45, "raw_contact_id=? AND mimetype=?"

    .line 1053
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/phone_v2"

    aput-object v48, v46, v47

    .line 1051
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1054
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1050
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1090
    :cond_8
    :goto_1
    const/16 v16, 0x0

    .line 1092
    .local v16, "emails":Lorg/json/JSONArray;
    :try_start_2
    const-string v44, "emails"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 1093
    if-eqz v16, :cond_9

    .line 1095
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v44

    if-nez v44, :cond_13

    .line 1096
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1097
    const-string v45, "raw_contact_id=? AND mimetype=?"

    .line 1099
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/email_v2"

    aput-object v48, v46, v47

    .line 1097
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1100
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1096
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1145
    :cond_9
    :goto_2
    const/4 v5, 0x0

    .line 1147
    .local v5, "addresses":Lorg/json/JSONArray;
    :try_start_3
    const-string v44, "addresses"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1148
    if-eqz v5, :cond_a

    .line 1150
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v44

    if-nez v44, :cond_16

    .line 1151
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1152
    const-string v45, "raw_contact_id=? AND mimetype=?"

    .line 1154
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/postal-address_v2"

    aput-object v48, v46, v47

    .line 1152
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1155
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1151
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1201
    :cond_a
    :goto_3
    const/16 v32, 0x0

    .line 1203
    .local v32, "organizations":Lorg/json/JSONArray;
    :try_start_4
    const-string v44, "organizations"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v32

    .line 1204
    if-eqz v32, :cond_b

    .line 1206
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v44

    if-nez v44, :cond_18

    .line 1207
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1208
    const-string v45, "raw_contact_id=? AND mimetype=?"

    .line 1210
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/organization"

    aput-object v48, v46, v47

    .line 1208
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1211
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1207
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1251
    :cond_b
    :goto_4
    const/16 v24, 0x0

    .line 1253
    .local v24, "ims":Lorg/json/JSONArray;
    :try_start_5
    const-string v44, "ims"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 1254
    if-eqz v24, :cond_c

    .line 1256
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v44

    if-nez v44, :cond_1a

    .line 1257
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1258
    const-string v45, "raw_contact_id=? AND mimetype=?"

    .line 1260
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/im"

    aput-object v48, v46, v47

    .line 1258
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1261
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1257
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1297
    :cond_c
    :goto_5
    const-string v44, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1298
    .local v28, "note":Ljava/lang/String;
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1299
    const-string v45, "contact_id=? AND mimetype=?"

    .line 1301
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object p1, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/note"

    aput-object v48, v46, v47

    .line 1299
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1302
    const-string v45, "data1"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1303
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1298
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    const-string v44, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1307
    .local v27, "nickname":Ljava/lang/String;
    if-eqz v27, :cond_d

    .line 1308
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1309
    const-string v45, "contact_id=? AND mimetype=?"

    .line 1311
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object p1, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/nickname"

    aput-object v48, v46, v47

    .line 1309
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1312
    const-string v45, "data1"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1313
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1308
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    :cond_d
    const/16 v43, 0x0

    .line 1319
    .local v43, "websites":Lorg/json/JSONArray;
    :try_start_6
    const-string v44, "urls"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v43

    .line 1320
    if-eqz v43, :cond_e

    .line 1322
    invoke-virtual/range {v43 .. v43}, Lorg/json/JSONArray;->length()I

    move-result v44

    if-nez v44, :cond_1c

    .line 1323
    const-string v44, "ContactsAccessor"

    const-string v45, "This means we should be deleting all the phone numbers."

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1325
    const-string v45, "raw_contact_id=? AND mimetype=?"

    .line 1327
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/website"

    aput-object v48, v46, v47

    .line 1325
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1328
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1324
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1364
    :cond_e
    :goto_6
    const-string v44, "birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1365
    .local v6, "birthday":Ljava/lang/String;
    if-eqz v6, :cond_f

    .line 1366
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1367
    const-string v45, "contact_id=? AND mimetype=? AND data2=?"

    .line 1370
    const/16 v46, 0x3

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object p1, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/contact_event"

    aput-object v48, v46, v47

    const/16 v47, 0x2

    new-instance v48, Ljava/lang/String;

    const-string v49, "3"

    invoke-direct/range {v48 .. v49}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v48, v46, v47

    .line 1367
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1371
    const-string v45, "data2"

    const/16 v46, 0x3

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1372
    const-string v45, "data1"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1373
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1366
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    :cond_f
    const/16 v38, 0x0

    .line 1379
    .local v38, "photos":Lorg/json/JSONArray;
    :try_start_7
    const-string v44, "photos"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v38

    .line 1380
    if-eqz v38, :cond_10

    .line 1382
    invoke-virtual/range {v38 .. v38}, Lorg/json/JSONArray;->length()I

    move-result v44

    if-nez v44, :cond_1e

    .line 1383
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1384
    const-string v45, "raw_contact_id=? AND mimetype=?"

    .line 1386
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/photo"

    aput-object v48, v46, v47

    .line 1384
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1387
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1383
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1423
    :cond_10
    :goto_7
    const/16 v40, 0x1

    .line 1427
    .local v40, "retVal":Z
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "com.android.contacts"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_9

    .line 1439
    :goto_8
    if-eqz v40, :cond_20

    .line 1442
    .end local p1    # "id":Ljava/lang/String;
    :goto_9
    return-object p1

    .line 1039
    .end local v5    # "addresses":Lorg/json/JSONArray;
    .end local v6    # "birthday":Ljava/lang/String;
    .end local v16    # "emails":Lorg/json/JSONArray;
    .end local v24    # "ims":Lorg/json/JSONArray;
    .end local v27    # "nickname":Ljava/lang/String;
    .end local v28    # "note":Ljava/lang/String;
    .end local v32    # "organizations":Lorg/json/JSONArray;
    .end local v35    # "phones":Lorg/json/JSONArray;
    .end local v38    # "photos":Lorg/json/JSONArray;
    .end local v40    # "retVal":Z
    .end local v43    # "websites":Lorg/json/JSONArray;
    .restart local p1    # "id":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1040
    .local v12, "e1":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get name"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1058
    .end local v12    # "e1":Lorg/json/JSONException;
    .restart local v35    # "phones":Lorg/json/JSONArray;
    :cond_11
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_a
    :try_start_9
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_8

    .line 1059
    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/json/JSONObject;

    .line 1060
    .local v33, "phone":Lorg/json/JSONObject;
    const-string v44, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1062
    .local v34, "phoneId":Ljava/lang/String;
    if-nez v34, :cond_12

    .line 1063
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1064
    .local v9, "contentValues":Landroid/content/ContentValues;
    const-string v44, "raw_contact_id"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1065
    const-string v44, "mimetype"

    const-string v45, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getPhoneType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1070
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1069
    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1070
    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1069
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_a

    .line 1074
    :cond_12
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1075
    const-string v45, "_id=? AND mimetype=?"

    .line 1077
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v34, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/phone_v2"

    aput-object v48, v46, v47

    .line 1075
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1078
    const-string v45, "data1"

    const-string v46, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1079
    const-string v45, "data2"

    const-string v46, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getPhoneType(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1080
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1074
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_b

    .line 1085
    .end local v21    # "i":I
    .end local v33    # "phone":Lorg/json/JSONObject;
    .end local v34    # "phoneId":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 1086
    .local v11, "e":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get phone numbers"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1104
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v16    # "emails":Lorg/json/JSONArray;
    :cond_13
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_c
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_9

    .line 1105
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 1106
    .local v13, "email":Lorg/json/JSONObject;
    const-string v44, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1108
    .local v14, "emailId":Ljava/lang/String;
    if-nez v14, :cond_14

    .line 1109
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1110
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v44, "raw_contact_id"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1111
    const-string v44, "mimetype"

    const-string v45, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1116
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1115
    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1116
    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1115
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_d
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_c

    .line 1120
    :cond_14
    const-string v44, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1121
    .local v15, "emailValue":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v44

    if-nez v44, :cond_15

    .line 1122
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1123
    const-string v45, "_id=? AND mimetype=?"

    .line 1125
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v14, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/email_v2"

    aput-object v48, v46, v47

    .line 1123
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1126
    const-string v45, "data1"

    const-string v46, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1127
    const-string v45, "data2"

    const-string v46, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1128
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1122
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_d

    .line 1140
    .end local v13    # "email":Lorg/json/JSONObject;
    .end local v14    # "emailId":Ljava/lang/String;
    .end local v15    # "emailValue":Ljava/lang/String;
    .end local v21    # "i":I
    :catch_2
    move-exception v11

    .line 1141
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get emails"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1130
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v13    # "email":Lorg/json/JSONObject;
    .restart local v14    # "emailId":Ljava/lang/String;
    .restart local v15    # "emailValue":Ljava/lang/String;
    .restart local v21    # "i":I
    :cond_15
    :try_start_b
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1131
    const-string v45, "_id=? AND mimetype=?"

    .line 1133
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v14, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/email_v2"

    aput-object v48, v46, v47

    .line 1131
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1134
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1130
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_d

    .line 1159
    .end local v13    # "email":Lorg/json/JSONObject;
    .end local v14    # "emailId":Ljava/lang/String;
    .end local v15    # "emailValue":Ljava/lang/String;
    .end local v21    # "i":I
    .restart local v5    # "addresses":Lorg/json/JSONArray;
    :cond_16
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_e
    :try_start_c
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_a

    .line 1160
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1161
    .local v3, "address":Lorg/json/JSONObject;
    const-string v44, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1163
    .local v4, "addressId":Ljava/lang/String;
    if-nez v4, :cond_17

    .line 1164
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1165
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v44, "raw_contact_id"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1166
    const-string v44, "mimetype"

    const-string v45, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getAddressType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1168
    const-string v44, "data1"

    const-string v45, "formatted"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const-string v44, "data4"

    const-string v45, "streetAddress"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v44, "data7"

    const-string v45, "locality"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const-string v44, "data8"

    const-string v45, "region"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const-string v44, "data9"

    const-string v45, "postalCode"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string v44, "data10"

    const-string v45, "country"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1175
    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1176
    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1175
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_f
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_e

    .line 1180
    :cond_17
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1181
    const-string v45, "_id=? AND mimetype=?"

    .line 1183
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v4, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/postal-address_v2"

    aput-object v48, v46, v47

    .line 1181
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1184
    const-string v45, "data2"

    const-string v46, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getAddressType(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1185
    const-string v45, "data1"

    const-string v46, "formatted"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1186
    const-string v45, "data4"

    const-string v46, "streetAddress"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1187
    const-string v45, "data7"

    const-string v46, "locality"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1188
    const-string v45, "data8"

    const-string v46, "region"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1189
    const-string v45, "data9"

    const-string v46, "postalCode"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1190
    const-string v45, "data10"

    const-string v46, "country"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1191
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1180
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_f

    .line 1196
    .end local v3    # "address":Lorg/json/JSONObject;
    .end local v4    # "addressId":Ljava/lang/String;
    .end local v21    # "i":I
    :catch_3
    move-exception v11

    .line 1197
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get addresses"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1215
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v32    # "organizations":Lorg/json/JSONArray;
    :cond_18
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_10
    :try_start_d
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_b

    .line 1216
    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/json/JSONObject;

    .line 1217
    .local v30, "org":Lorg/json/JSONObject;
    const-string v44, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1219
    .local v31, "orgId":Ljava/lang/String;
    if-nez v31, :cond_19

    .line 1220
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1221
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v44, "raw_contact_id"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1222
    const-string v44, "mimetype"

    const-string v45, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getOrgType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1224
    const-string v44, "data5"

    const-string v45, "department"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const-string v44, "data1"

    const-string v45, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    const-string v44, "data4"

    const-string v45, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1228
    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1229
    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1228
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_11
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_10

    .line 1233
    :cond_19
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1234
    const-string v45, "_id=? AND mimetype=?"

    .line 1236
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v31, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/organization"

    aput-object v48, v46, v47

    .line 1234
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1237
    const-string v45, "data2"

    const-string v46, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getOrgType(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1238
    const-string v45, "data5"

    const-string v46, "department"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1239
    const-string v45, "data1"

    const-string v46, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1240
    const-string v45, "data4"

    const-string v46, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1241
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1233
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_11

    .line 1246
    .end local v21    # "i":I
    .end local v30    # "org":Lorg/json/JSONObject;
    .end local v31    # "orgId":Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 1247
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get organizations"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1265
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v24    # "ims":Lorg/json/JSONArray;
    :cond_1a
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_12
    :try_start_e
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_c

    .line 1266
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/json/JSONObject;

    .line 1267
    .local v22, "im":Lorg/json/JSONObject;
    const-string v44, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1269
    .local v23, "imId":Ljava/lang/String;
    if-nez v23, :cond_1b

    .line 1270
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1271
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v44, "raw_contact_id"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1272
    const-string v44, "mimetype"

    const-string v45, "vnd.android.cursor.item/im"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getImType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1277
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1276
    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1277
    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1276
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_13
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_12

    .line 1281
    :cond_1b
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1282
    const-string v45, "_id=? AND mimetype=?"

    .line 1284
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v23, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/im"

    aput-object v48, v46, v47

    .line 1282
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1285
    const-string v45, "data1"

    const-string v46, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1286
    const-string v45, "data2"

    const-string v46, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1287
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1281
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_13

    .line 1292
    .end local v21    # "i":I
    .end local v22    # "im":Lorg/json/JSONObject;
    .end local v23    # "imId":Ljava/lang/String;
    :catch_5
    move-exception v11

    .line 1293
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get emails"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1332
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v27    # "nickname":Ljava/lang/String;
    .restart local v28    # "note":Ljava/lang/String;
    .restart local v43    # "websites":Lorg/json/JSONArray;
    :cond_1c
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_14
    :try_start_f
    invoke-virtual/range {v43 .. v43}, Lorg/json/JSONArray;->length()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_e

    .line 1333
    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lorg/json/JSONObject;

    .line 1334
    .local v41, "website":Lorg/json/JSONObject;
    const-string v44, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1336
    .local v42, "websiteId":Ljava/lang/String;
    if-nez v42, :cond_1d

    .line 1337
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1338
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v44, "raw_contact_id"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1339
    const-string v44, "mimetype"

    const-string v45, "vnd.android.cursor.item/website"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1344
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1343
    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1344
    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1343
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_15
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_14

    .line 1348
    :cond_1d
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1349
    const-string v45, "_id=? AND mimetype=?"

    .line 1351
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v42, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/website"

    aput-object v48, v46, v47

    .line 1349
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1352
    const-string v45, "data1"

    const-string v46, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1353
    const-string v45, "data2"

    const-string v46, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1354
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1348
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_15

    .line 1359
    .end local v21    # "i":I
    .end local v41    # "website":Lorg/json/JSONObject;
    .end local v42    # "websiteId":Ljava/lang/String;
    :catch_6
    move-exception v11

    .line 1360
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get websites"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1391
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v6    # "birthday":Ljava/lang/String;
    .restart local v38    # "photos":Lorg/json/JSONArray;
    :cond_1e
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_16
    :try_start_10
    invoke-virtual/range {v38 .. v38}, Lorg/json/JSONArray;->length()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_10

    .line 1392
    move-object/from16 v0, v38

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lorg/json/JSONObject;

    .line 1393
    .local v36, "photo":Lorg/json/JSONObject;
    const-string v44, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1394
    .local v37, "photoId":Ljava/lang/String;
    const-string v44, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getPhotoBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 1396
    .local v8, "bytes":[B
    if-nez v37, :cond_1f

    .line 1397
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1398
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v44, "raw_contact_id"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1399
    const-string v44, "mimetype"

    const-string v45, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const-string v44, "is_super_primary"

    const/16 v45, 0x1

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1401
    const-string v44, "data15"

    move-object/from16 v0, v44

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1404
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1403
    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1404
    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1403
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_17
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_16

    .line 1408
    :cond_1f
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1409
    const-string v45, "_id=? AND mimetype=?"

    .line 1411
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v37, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/photo"

    aput-object v48, v46, v47

    .line 1409
    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1412
    const-string v45, "is_super_primary"

    const/16 v46, 0x1

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1413
    const-string v45, "data15"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    .line 1414
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    .line 1408
    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_17

    .line 1419
    .end local v8    # "bytes":[B
    .end local v21    # "i":I
    .end local v36    # "photo":Lorg/json/JSONObject;
    .end local v37    # "photoId":Ljava/lang/String;
    :catch_7
    move-exception v11

    .line 1420
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get photos"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1428
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v40    # "retVal":Z
    :catch_8
    move-exception v11

    .line 1429
    .local v11, "e":Landroid/os/RemoteException;
    const-string v44, "ContactsAccessor"

    invoke-virtual {v11}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1430
    const-string v44, "ContactsAccessor"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1431
    const/16 v40, 0x0

    goto/16 :goto_8

    .line 1432
    .end local v11    # "e":Landroid/os/RemoteException;
    :catch_9
    move-exception v11

    .line 1433
    .local v11, "e":Landroid/content/OperationApplicationException;
    const-string v44, "ContactsAccessor"

    invoke-virtual {v11}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1434
    const-string v44, "ContactsAccessor"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1435
    const/16 v40, 0x0

    goto/16 :goto_8

    .line 1442
    .end local v11    # "e":Landroid/content/OperationApplicationException;
    :cond_20
    const/16 p1, 0x0

    goto/16 :goto_9
.end method

.method private nameQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 782
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 784
    .local v0, "contactName":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "data3"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 785
    .local v2, "familyName":Ljava/lang/String;
    const-string v8, "data2"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 786
    .local v4, "givenName":Ljava/lang/String;
    const-string v8, "data5"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 787
    .local v7, "middleName":Ljava/lang/String;
    const-string v8, "data4"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 788
    .local v5, "honorificPrefix":Ljava/lang/String;
    const-string v8, "data6"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 791
    .local v6, "honorificSuffix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v3, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 792
    .local v3, "formatted":Ljava/lang/StringBuffer;
    if-eqz v5, :cond_0

    .line 793
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 795
    :cond_0
    if-eqz v4, :cond_1

    .line 796
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    :cond_1
    if-eqz v7, :cond_2

    .line 799
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 801
    :cond_2
    if-eqz v2, :cond_3

    .line 802
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 804
    :cond_3
    if-eqz v6, :cond_4

    .line 805
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    :cond_4
    const-string v8, "familyName"

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 809
    const-string v8, "givenName"

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 810
    const-string v8, "middleName"

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 811
    const-string v8, "honorificPrefix"

    invoke-virtual {v0, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 812
    const-string v8, "honorificSuffix"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 813
    const-string v8, "formatted"

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    .end local v2    # "familyName":Ljava/lang/String;
    .end local v3    # "formatted":Ljava/lang/StringBuffer;
    .end local v4    # "givenName":Ljava/lang/String;
    .end local v5    # "honorificPrefix":Ljava/lang/String;
    .end local v6    # "honorificSuffix":Ljava/lang/String;
    .end local v7    # "middleName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 814
    :catch_0
    move-exception v1

    .line 815
    .local v1, "e":Lorg/json/JSONException;
    const-string v8, "ContactsAccessor"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private organizationQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 739
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 741
    .local v1, "organization":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 742
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 743
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getOrgType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 744
    const-string v2, "department"

    const-string v3, "data5"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    const-string v2, "name"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    const-string v2, "title"

    const-string v3, "data4"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :goto_0
    return-object v1

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 826
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 828
    .local v2, "phoneNumber":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "id"

    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 829
    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 830
    const-string v3, "value"

    const-string v4, "data1"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 831
    const-string v3, "type"

    const-string v4, "data2"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getPhoneType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 837
    :goto_0
    return-object v2

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 834
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 835
    .local v1, "excp":Ljava/lang/Exception;
    const-string v3, "ContactsAccessor"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private photoQuery(Landroid/database/Cursor;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 900
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 902
    .local v8, "photo":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "id"

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 903
    const-string v0, "pref"

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 904
    const-string v0, "type"

    const-string v2, "url"

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 905
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 906
    .local v7, "person":Landroid/net/Uri;
    const-string v0, "photo"

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 907
    .local v1, "photoUri":Landroid/net/Uri;
    const-string v0, "value"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 910
    iget-object v0, p0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 911
    .local v9, "photoCursor":Landroid/database/Cursor;
    if-nez v9, :cond_1

    move-object v8, v10

    .line 922
    .end local v1    # "photoUri":Landroid/net/Uri;
    .end local v7    # "person":Landroid/net/Uri;
    .end local v8    # "photo":Lorg/json/JSONObject;
    .end local v9    # "photoCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v8

    .line 914
    .restart local v1    # "photoUri":Landroid/net/Uri;
    .restart local v7    # "person":Landroid/net/Uri;
    .restart local v8    # "photo":Lorg/json/JSONObject;
    .restart local v9    # "photoCursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v10

    .line 916
    goto :goto_0

    .line 919
    .end local v1    # "photoUri":Landroid/net/Uri;
    .end local v7    # "person":Landroid/net/Uri;
    .end local v9    # "photoCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 920
    .local v6, "e":Lorg/json/JSONException;
    const-string v0, "ContactsAccessor"

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private populateContact(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "contact"    # Lorg/json/JSONObject;
    .param p2, "organizations"    # Lorg/json/JSONArray;
    .param p3, "addresses"    # Lorg/json/JSONArray;
    .param p4, "phones"    # Lorg/json/JSONArray;
    .param p5, "emails"    # Lorg/json/JSONArray;
    .param p6, "ims"    # Lorg/json/JSONArray;
    .param p7, "websites"    # Lorg/json/JSONArray;
    .param p8, "photos"    # Lorg/json/JSONArray;

    .prologue
    .line 515
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 516
    const-string v1, "organizations"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 519
    const-string v1, "addresses"

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    :cond_1
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 522
    const-string v1, "phoneNumbers"

    invoke-virtual {p1, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    :cond_2
    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 525
    const-string v1, "emails"

    invoke-virtual {p1, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    :cond_3
    invoke-virtual {p6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 528
    const-string v1, "ims"

    invoke-virtual {p1, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    :cond_4
    invoke-virtual {p7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 531
    const-string v1, "urls"

    invoke-virtual {p1, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    :cond_5
    invoke-virtual {p8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 534
    const-string v1, "photos"

    invoke-virtual {p1, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :cond_6
    :goto_0
    return-object p1

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private populateContactArray(ILjava/util/HashMap;Landroid/database/Cursor;)Lorg/json/JSONArray;
    .locals 37
    .param p1, "limit"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/database/Cursor;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 321
    .local p2, "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v22, ""

    .line 322
    .local v22, "contactId":Ljava/lang/String;
    const-string v34, ""

    .line 323
    .local v34, "rawId":Ljava/lang/String;
    const-string v29, ""

    .line 324
    .local v29, "oldContactId":Ljava/lang/String;
    const/16 v28, 0x1

    .line 325
    .local v28, "newContact":Z
    const-string v27, ""

    .line 327
    .local v27, "mimetype":Ljava/lang/String;
    new-instance v23, Lorg/json/JSONArray;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONArray;-><init>()V

    .line 328
    .local v23, "contacts":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 329
    .local v4, "contact":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 330
    .local v5, "organizations":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 331
    .local v6, "addresses":Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 332
    .local v7, "phones":Lorg/json/JSONArray;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 333
    .local v8, "emails":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 334
    .local v9, "ims":Lorg/json/JSONArray;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 335
    .local v10, "websites":Lorg/json/JSONArray;
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 338
    .local v11, "photos":Lorg/json/JSONArray;
    const-string v3, "contact_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 339
    .local v14, "colContactId":I
    const-string v3, "raw_contact_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 340
    .local v20, "colRawContactId":I
    const-string v3, "mimetype"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 341
    .local v17, "colMimetype":I
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 342
    .local v15, "colDisplayName":I
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 343
    .local v19, "colNote":I
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 344
    .local v18, "colNickname":I
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 345
    .local v13, "colBirthday":I
    const-string v3, "data2"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 347
    .local v16, "colEventType":I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 348
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v36, p1, -0x1

    move/from16 v0, v36

    if-le v3, v0, :cond_2

    .line 454
    :cond_0
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, p1

    if-ge v3, v0, :cond_1

    move-object/from16 v3, p0

    .line 455
    invoke-direct/range {v3 .. v11}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->populateContact(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 459
    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 460
    return-object v23

    .line 350
    :cond_2
    :try_start_0
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 351
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 354
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-nez v3, :cond_3

    .line 355
    move-object/from16 v29, v22

    .line 360
    :cond_3
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v3, p0

    .line 363
    invoke-direct/range {v3 .. v11}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->populateContact(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 367
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v4    # "contact":Lorg/json/JSONObject;
    .local v21, "contact":Lorg/json/JSONObject;
    :try_start_1
    new-instance v30, Lorg/json/JSONArray;

    invoke-direct/range {v30 .. v30}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .local v30, "organizations":Lorg/json/JSONArray;
    :try_start_2
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 370
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .local v12, "addresses":Lorg/json/JSONArray;
    :try_start_3
    new-instance v31, Lorg/json/JSONArray;

    invoke-direct/range {v31 .. v31}, Lorg/json/JSONArray;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 371
    .end local v7    # "phones":Lorg/json/JSONArray;
    .local v31, "phones":Lorg/json/JSONArray;
    :try_start_4
    new-instance v25, Lorg/json/JSONArray;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONArray;-><init>()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 372
    .end local v8    # "emails":Lorg/json/JSONArray;
    .local v25, "emails":Lorg/json/JSONArray;
    :try_start_5
    new-instance v26, Lorg/json/JSONArray;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONArray;-><init>()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 373
    .end local v9    # "ims":Lorg/json/JSONArray;
    .local v26, "ims":Lorg/json/JSONArray;
    :try_start_6
    new-instance v35, Lorg/json/JSONArray;

    invoke-direct/range {v35 .. v35}, Lorg/json/JSONArray;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 374
    .end local v10    # "websites":Lorg/json/JSONArray;
    .local v35, "websites":Lorg/json/JSONArray;
    :try_start_7
    new-instance v33, Lorg/json/JSONArray;

    invoke-direct/range {v33 .. v33}, Lorg/json/JSONArray;-><init>()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 377
    .end local v11    # "photos":Lorg/json/JSONArray;
    .local v33, "photos":Lorg/json/JSONArray;
    const/16 v28, 0x1

    move-object/from16 v11, v33

    .end local v33    # "photos":Lorg/json/JSONArray;
    .restart local v11    # "photos":Lorg/json/JSONArray;
    move-object/from16 v10, v35

    .end local v35    # "websites":Lorg/json/JSONArray;
    .restart local v10    # "websites":Lorg/json/JSONArray;
    move-object/from16 v9, v26

    .end local v26    # "ims":Lorg/json/JSONArray;
    .restart local v9    # "ims":Lorg/json/JSONArray;
    move-object/from16 v8, v25

    .end local v25    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .line 382
    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    :cond_4
    if-eqz v28, :cond_5

    .line 383
    const/16 v28, 0x0

    .line 384
    :try_start_8
    const-string v3, "id"

    move-object/from16 v0, v22

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string v3, "rawId"

    move-object/from16 v0, v34

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 391
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 392
    const-string v3, "displayName"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    :cond_6
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 396
    const-string v3, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 397
    const-string v3, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->nameQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    :cond_7
    :goto_1
    move-object/from16 v29, v22

    goto/16 :goto_0

    .line 399
    :cond_8
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 400
    const-string v3, "phoneNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->phoneQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    .line 444
    :catch_0
    move-exception v24

    .line 445
    .local v24, "e":Lorg/json/JSONException;
    :goto_2
    const-string v3, "ContactsAccessor"

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 403
    .end local v24    # "e":Lorg/json/JSONException;
    :cond_9
    :try_start_9
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 404
    const-string v3, "emails"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 405
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->emailQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 407
    :cond_a
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 408
    const-string v3, "addresses"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->addressQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 411
    :cond_b
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 412
    const-string v3, "organizations"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 413
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->organizationQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 415
    :cond_c
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 416
    const-string v3, "ims"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->imQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 419
    :cond_d
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 420
    const-string v3, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 421
    const-string v3, "note"

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 423
    :cond_e
    const-string v3, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 424
    const-string v3, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 425
    const-string v3, "nickname"

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 427
    :cond_f
    const-string v3, "vnd.android.cursor.item/website"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 428
    const-string v3, "urls"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 429
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->websiteQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 431
    :cond_10
    const-string v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 432
    const-string v3, "birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 433
    const/4 v3, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    if-ne v3, v0, :cond_7

    .line 434
    const-string v3, "birthday"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 437
    :cond_11
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 438
    const-string v3, "photos"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 439
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->photoQuery(Landroid/database/Cursor;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v32

    .line 440
    .local v32, "photo":Lorg/json/JSONObject;
    if-eqz v32, :cond_7

    .line 441
    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    .line 444
    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v32    # "photo":Lorg/json/JSONObject;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    :catch_1
    move-exception v24

    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    :catch_2
    move-exception v24

    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    :catch_3
    move-exception v24

    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v31    # "phones":Lorg/json/JSONArray;
    :catch_4
    move-exception v24

    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .end local v8    # "emails":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v25    # "emails":Lorg/json/JSONArray;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v31    # "phones":Lorg/json/JSONArray;
    :catch_5
    move-exception v24

    move-object/from16 v8, v25

    .end local v25    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .end local v8    # "emails":Lorg/json/JSONArray;
    .end local v9    # "ims":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v25    # "emails":Lorg/json/JSONArray;
    .restart local v26    # "ims":Lorg/json/JSONArray;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v31    # "phones":Lorg/json/JSONArray;
    :catch_6
    move-exception v24

    move-object/from16 v9, v26

    .end local v26    # "ims":Lorg/json/JSONArray;
    .restart local v9    # "ims":Lorg/json/JSONArray;
    move-object/from16 v8, v25

    .end local v25    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .end local v8    # "emails":Lorg/json/JSONArray;
    .end local v9    # "ims":Lorg/json/JSONArray;
    .end local v10    # "websites":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v25    # "emails":Lorg/json/JSONArray;
    .restart local v26    # "ims":Lorg/json/JSONArray;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v31    # "phones":Lorg/json/JSONArray;
    .restart local v35    # "websites":Lorg/json/JSONArray;
    :catch_7
    move-exception v24

    move-object/from16 v10, v35

    .end local v35    # "websites":Lorg/json/JSONArray;
    .restart local v10    # "websites":Lorg/json/JSONArray;
    move-object/from16 v9, v26

    .end local v26    # "ims":Lorg/json/JSONArray;
    .restart local v9    # "ims":Lorg/json/JSONArray;
    move-object/from16 v8, v25

    .end local v25    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2
.end method

.method private websiteQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 882
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 884
    .local v1, "website":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 885
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 886
    const-string v2, "value"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    return-object v1

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getContactById(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactById(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getContactById(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "desiredFields"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 290
    iget-object v0, p0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 291
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 293
    const-string v3, "raw_contact_id = ? "

    .line 294
    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v10

    .line 295
    const-string v5, "raw_contact_id ASC"

    .line 290
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 298
    .local v6, "c":Landroid/database/Cursor;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "desiredFields"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 297
    invoke-virtual {p0, v0}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->buildPopulationSet(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v8

    .line 301
    .local v8, "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0, v9, v8, v6}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->populateContactArray(ILjava/util/HashMap;Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v7

    .line 303
    .local v7, "contacts":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 304
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 306
    :cond_0
    return-object v2
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 12
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 1802
    const/4 v8, 0x0

    .line 1803
    .local v8, "result":I
    iget-object v0, p0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1805
    const-string v3, "_id = ?"

    .line 1806
    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v11

    move-object v5, v2

    .line 1803
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1807
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 1808
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1809
    const-string v0, "lookup"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1810
    .local v7, "lookupKey":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1811
    .local v9, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v9, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1816
    .end local v7    # "lookupKey":Ljava/lang/String;
    .end local v9    # "uri":Landroid/net/Uri;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1818
    if-lez v8, :cond_1

    move v0, v10

    :goto_1
    return v0

    .line 1813
    :cond_0
    const-string v0, "ContactsAccessor"

    const-string v1, "Could not find contact with ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v11

    .line 1818
    goto :goto_1
.end method

.method public save(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 11
    .param p1, "contact"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 933
    iget-object v7, p0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v7}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    .line 934
    .local v5, "mgr":Landroid/accounts/AccountManager;
    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 935
    .local v3, "accounts":[Landroid/accounts/Account;
    const/4 v1, 0x0

    .line 936
    .local v1, "accountName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 938
    .local v2, "accountType":Ljava/lang/String;
    array-length v7, v3

    if-ne v7, v8, :cond_1

    .line 939
    aget-object v7, v3, v6

    iget-object v1, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 940
    aget-object v6, v3, v6

    iget-object v2, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 970
    :cond_0
    :goto_0
    const-string v6, "id"

    invoke-virtual {p0, p1, v6}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 971
    .local v4, "id":Ljava/lang/String;
    if-nez v4, :cond_8

    .line 973
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->createNewContact(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 976
    :goto_1
    return-object v6

    .line 942
    .end local v4    # "id":Ljava/lang/String;
    :cond_1
    array-length v7, v3

    if-le v7, v8, :cond_0

    .line 943
    array-length v8, v3

    move v7, v6

    :goto_2
    if-lt v7, v8, :cond_3

    .line 950
    :goto_3
    if-nez v1, :cond_2

    .line 951
    array-length v8, v3

    move v7, v6

    :goto_4
    if-lt v7, v8, :cond_5

    .line 959
    :cond_2
    :goto_5
    if-nez v1, :cond_0

    .line 960
    array-length v7, v3

    :goto_6
    if-ge v6, v7, :cond_0

    aget-object v0, v3, v6

    .line 961
    .local v0, "a":Landroid/accounts/Account;
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v9, ".+@.+\\.+.+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 962
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 963
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 964
    goto :goto_0

    .line 943
    .end local v0    # "a":Landroid/accounts/Account;
    :cond_3
    aget-object v0, v3, v7

    .line 944
    .restart local v0    # "a":Landroid/accounts/Account;
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v10, "eas"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v10, ".+@.+\\.+.+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 945
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 946
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 947
    goto :goto_3

    .line 943
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 951
    .end local v0    # "a":Landroid/accounts/Account;
    :cond_5
    aget-object v0, v3, v7

    .line 952
    .restart local v0    # "a":Landroid/accounts/Account;
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v10, "com.google"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v10, ".+@.+\\.+.+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 953
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 954
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 955
    goto :goto_5

    .line 951
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 960
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 976
    .end local v0    # "a":Landroid/accounts/Account;
    .restart local v4    # "id":Ljava/lang/String;
    :cond_8
    invoke-direct {p0, v4, p1, v2, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->modifyContact(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public search(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 21
    .param p1, "fields"    # Lorg/json/JSONArray;
    .param p2, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 139
    const-string v19, ""

    .line 140
    .local v19, "searchTerm":Ljava/lang/String;
    const v16, 0x7fffffff

    .line 141
    .local v16, "limit":I
    const/16 v17, 0x1

    .line 143
    .local v17, "multiple":Z
    if-eqz p2, :cond_e

    .line 144
    const-string v3, "filter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 145
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_d

    .line 146
    const-string v19, "%"

    .line 153
    :goto_0
    :try_start_0
    const-string v3, "multiple"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 154
    if-nez v17, :cond_0

    .line 155
    const/16 v16, 0x1

    .line 171
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->buildPopulationSet(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v18

    .line 174
    .local v18, "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->buildWhereClause(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;

    move-result-object v20

    .line 177
    .local v20, "whereOptions":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 178
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "contact_id"

    aput-object v7, v5, v6

    .line 179
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->getWhere()Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->getWhereArgs()[Ljava/lang/String;

    move-result-object v7

    .line 181
    const-string v8, "contact_id ASC"

    .line 177
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 184
    .local v14, "idCursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 185
    .local v11, "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v13, -0x1

    .line 186
    .local v13, "idColumn":I
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_f

    .line 192
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->buildIdClause(Ljava/util/Set;Ljava/lang/String;)Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;

    move-result-object v15

    .line 198
    .local v15, "idOptions":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 199
    .local v10, "columnsToFetch":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v3, "contact_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v3, "raw_contact_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v3, "mimetype"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v3, "displayName"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_1
    const-string v3, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    const-string v3, "data3"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v3, "data5"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v3, "data4"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v3, "data6"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_2
    const-string v3, "phoneNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 215
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_3
    const-string v3, "emails"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 219
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 220
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 221
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_4
    const-string v3, "addresses"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 224
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 225
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v3, "data4"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v3, "data7"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v3, "data8"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v3, "data9"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v3, "data10"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_5
    const-string v3, "organizations"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 234
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v3, "data5"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v3, "data4"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_6
    const-string v3, "ims"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 241
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_7
    const-string v3, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 246
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_8
    const-string v3, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 249
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_9
    const-string v3, "urls"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 252
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 253
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_a
    const-string v3, "birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 257
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 258
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_b
    const-string v3, "photos"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 261
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 266
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 267
    invoke-virtual {v15}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->getWhere()Ljava/lang/String;

    move-result-object v6

    .line 268
    invoke-virtual {v15}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->getWhereArgs()[Ljava/lang/String;

    move-result-object v7

    .line 269
    const-string v8, "contact_id ASC"

    .line 265
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 271
    .local v9, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->populateContactArray(ILjava/util/HashMap;Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v12

    .line 272
    .local v12, "contacts":Lorg/json/JSONArray;
    return-object v12

    .line 149
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "columnsToFetch":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "contacts":Lorg/json/JSONArray;
    .end local v13    # "idColumn":I
    .end local v14    # "idCursor":Landroid/database/Cursor;
    .end local v15    # "idOptions":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    .end local v18    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v20    # "whereOptions":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 162
    :cond_e
    const-string v19, "%"

    goto/16 :goto_1

    .line 187
    .restart local v11    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "idColumn":I
    .restart local v14    # "idCursor":Landroid/database/Cursor;
    .restart local v18    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v20    # "whereOptions":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    :cond_f
    if-gez v13, :cond_10

    .line 188
    const-string v3, "contact_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 190
    :cond_10
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 157
    .end local v11    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "idColumn":I
    .end local v14    # "idCursor":Landroid/database/Cursor;
    .end local v18    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v20    # "whereOptions":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method
