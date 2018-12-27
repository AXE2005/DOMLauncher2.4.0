.class public Lorg/apache/cordova/contacts/ContactManager;
.super Lorg/apache/cordova/CordovaPlugin;
.source "ContactManager.java"


# static fields
.field private static final CONTACT_PICKER_RESULT:I = 0x3e8

.field public static final INVALID_ARGUMENT_ERROR:I = 0x1

.field public static final IO_ERROR:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "Contact Query"

.field public static final NOT_SUPPORTED_ERROR:I = 0x5

.field public static final PENDING_OPERATION_ERROR:I = 0x3

.field public static final PERMISSION_DENIED_ERROR:I = 0x14

.field public static final TIMEOUT_ERROR:I = 0x2

.field public static final UNKNOWN_ERROR:I


# instance fields
.field private callbackContext:Lorg/apache/cordova/CallbackContext;

.field private contactAccessor:Lorg/apache/cordova/contacts/ContactAccessor;

.field private executeArgs:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$0(Lorg/apache/cordova/contacts/ContactManager;)Lorg/apache/cordova/contacts/ContactAccessor;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/cordova/contacts/ContactManager;->contactAccessor:Lorg/apache/cordova/contacts/ContactAccessor;

    return-object v0
.end method

.method private pickContactAsync()V
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    .line 145
    .local v0, "plugin":Lorg/apache/cordova/CordovaPlugin;
    new-instance v1, Lorg/apache/cordova/contacts/ContactManager$4;

    invoke-direct {v1, p0, v0}, Lorg/apache/cordova/contacts/ContactManager$4;-><init>(Lorg/apache/cordova/contacts/ContactManager;Lorg/apache/cordova/CordovaPlugin;)V

    .line 151
    .local v1, "worker":Ljava/lang/Runnable;
    iget-object v2, p0, Lorg/apache/cordova/contacts/ContactManager;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 68
    iput-object p3, p0, Lorg/apache/cordova/contacts/ContactManager;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 69
    iput-object p2, p0, Lorg/apache/cordova/contacts/ContactManager;->executeArgs:Lorg/json/JSONArray;

    .line 75
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v7, "1."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 76
    new-instance v5, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p3, v5}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 137
    :goto_0
    return v4

    .line 84
    :cond_0
    iget-object v6, p0, Lorg/apache/cordova/contacts/ContactManager;->contactAccessor:Lorg/apache/cordova/contacts/ContactAccessor;

    if-nez v6, :cond_1

    .line 85
    new-instance v6, Lorg/apache/cordova/contacts/ContactAccessorSdk5;

    iget-object v7, p0, Lorg/apache/cordova/contacts/ContactManager;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-direct {v6, v7}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;-><init>(Lorg/apache/cordova/CordovaInterface;)V

    iput-object v6, p0, Lorg/apache/cordova/contacts/ContactManager;->contactAccessor:Lorg/apache/cordova/contacts/ContactAccessor;

    .line 88
    :cond_1
    const-string v6, "search"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 89
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 90
    .local v2, "filter":Lorg/json/JSONArray;
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v3, 0x0

    .line 91
    .local v3, "options":Lorg/json/JSONObject;
    :goto_1
    iget-object v5, p0, Lorg/apache/cordova/contacts/ContactManager;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lorg/apache/cordova/contacts/ContactManager$1;

    invoke-direct {v6, p0, v2, v3, p3}, Lorg/apache/cordova/contacts/ContactManager$1;-><init>(Lorg/apache/cordova/contacts/ContactManager;Lorg/json/JSONArray;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 90
    .end local v3    # "options":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_1

    .line 98
    .end local v2    # "filter":Lorg/json/JSONArray;
    :cond_3
    const-string v6, "save"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 99
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 100
    .local v0, "contact":Lorg/json/JSONObject;
    iget-object v5, p0, Lorg/apache/cordova/contacts/ContactManager;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lorg/apache/cordova/contacts/ContactManager$2;

    invoke-direct {v6, p0, v0, p3}, Lorg/apache/cordova/contacts/ContactManager$2;-><init>(Lorg/apache/cordova/contacts/ContactManager;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 119
    .end local v0    # "contact":Lorg/json/JSONObject;
    :cond_4
    const-string v6, "remove"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 120
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "contactId":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/cordova/contacts/ContactManager;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lorg/apache/cordova/contacts/ContactManager$3;

    invoke-direct {v6, p0, v1, p3}, Lorg/apache/cordova/contacts/ContactManager$3;-><init>(Lorg/apache/cordova/contacts/ContactManager;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 131
    .end local v1    # "contactId":Ljava/lang/String;
    :cond_5
    const-string v6, "pickContact"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 132
    invoke-direct {p0}, Lorg/apache/cordova/contacts/ContactManager;->pickContactAsync()V

    goto :goto_0

    :cond_6
    move v4, v5

    .line 135
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 163
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 164
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 165
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, "contactId":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/cordova/contacts/ContactManager;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 169
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "contact_id = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 168
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 170
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lorg/apache/cordova/contacts/ContactManager;->callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Error occured while retrieving contact raw id"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 190
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "contactId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 174
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "contactId":Ljava/lang/String;
    :cond_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 175
    .local v10, "id":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 178
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/contacts/ContactManager;->contactAccessor:Lorg/apache/cordova/contacts/ContactAccessor;

    invoke-virtual {v0, v10}, Lorg/apache/cordova/contacts/ContactAccessor;->getContactById(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 179
    .local v7, "contact":Lorg/json/JSONObject;
    iget-object v0, p0, Lorg/apache/cordova/contacts/ContactManager;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v7}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v7    # "contact":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 182
    .local v9, "e":Lorg/json/JSONException;
    const-string v0, "Contact Query"

    const-string v1, "JSON fail."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "contactId":Ljava/lang/String;
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v10    # "id":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lorg/apache/cordova/contacts/ContactManager;->callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v11}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 184
    :cond_3
    if-nez p2, :cond_2

    .line 185
    iget-object v0, p0, Lorg/apache/cordova/contacts/ContactManager;->callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v11}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0
.end method
