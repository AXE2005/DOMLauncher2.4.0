.class Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$2;
.super Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$MessagingReceiver;
.source "MessagingSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->registerIntentFilters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;Lorg/xwalk/core/internal/extension/api/messaging/Messaging;)V
    .locals 0
    .param p2, "x0"    # Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

    .prologue
    .line 239
    iput-object p1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$2;->this$0:Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;

    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$MessagingReceiver;-><init>(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;Lorg/xwalk/core/internal/extension/api/messaging/Messaging;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 242
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$2;->this$0:Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;

    invoke-static {v14}, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->access$000(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;)Ljava/lang/ref/WeakReference;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 243
    .local v1, "activity":Landroid/app/Activity;
    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const-string v14, "UUID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 245
    .local v12, "uuid":Ljava/lang/String;
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$2;->this$0:Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;

    invoke-static {v14}, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->access$100(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 247
    invoke-virtual/range {p0 .. p0}, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$2;->getResultCode()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    const/4 v4, 0x1

    .line 248
    .local v4, "error":Z
    :goto_1
    const-string v14, "asyncCallId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "asyncCallId":Ljava/lang/String;
    const-string v14, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 250
    .local v10, "smsMessage":Ljava/lang/String;
    const-string v14, "to"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 251
    .local v11, "to":Ljava/lang/String;
    const-string v14, "instanceid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 254
    .local v5, "instanceID":I
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 255
    .local v7, "jsSentMsg":Lorg/json/JSONObject;
    const-string v14, "type"

    const-string v15, "sms"

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v14, "from"

    const-string v15, ""

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v14, "read"

    const/4 v15, 0x1

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 258
    const-string v14, "to"

    invoke-virtual {v7, v14, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v14, "body"

    invoke-virtual {v7, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v14, "messageClass"

    const-string v15, "class1"

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v15, "state"

    if-eqz v4, :cond_3

    const-string v14, "failed"

    :goto_2
    invoke-virtual {v7, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v15, "deliveryStatus"

    if-eqz v4, :cond_4

    const-string v14, "error"

    :goto_3
    invoke-virtual {v7, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 265
    .local v9, "jsonMsgPromise":Lorg/json/JSONObject;
    const-string v14, "asyncCallId"

    invoke-virtual {v9, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v14, "cmd"

    const-string v15, "msg_smsSend_ret"

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 268
    .local v6, "jsData":Lorg/json/JSONObject;
    const-string v14, "data"

    invoke-virtual {v9, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v14, "error"

    invoke-virtual {v6, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 270
    const-string v14, "body"

    invoke-virtual {v6, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$2;->mMessaging:Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v5, v15}, Lorg/xwalk/core/internal/extension/api/messaging/Messaging;->postMessage(ILjava/lang/String;)V

    .line 274
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 275
    .local v8, "jsonMsgEvent":Lorg/json/JSONObject;
    const-string v14, "cmd"

    const-string v15, "sent"

    invoke-virtual {v8, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v14, "data"

    invoke-virtual {v8, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$2;->mMessaging:Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/xwalk/core/internal/extension/api/messaging/Messaging;->broadcastMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 285
    .local v13, "values":Landroid/content/ContentValues;
    const-string v14, "address"

    invoke-virtual {v13, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v14, "body"

    invoke-virtual {v13, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "content://sms/sent"

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 247
    .end local v2    # "asyncCallId":Ljava/lang/String;
    .end local v4    # "error":Z
    .end local v5    # "instanceID":I
    .end local v6    # "jsData":Lorg/json/JSONObject;
    .end local v7    # "jsSentMsg":Lorg/json/JSONObject;
    .end local v8    # "jsonMsgEvent":Lorg/json/JSONObject;
    .end local v9    # "jsonMsgPromise":Lorg/json/JSONObject;
    .end local v10    # "smsMessage":Ljava/lang/String;
    .end local v11    # "to":Ljava/lang/String;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 261
    .restart local v2    # "asyncCallId":Ljava/lang/String;
    .restart local v4    # "error":Z
    .restart local v5    # "instanceID":I
    .restart local v7    # "jsSentMsg":Lorg/json/JSONObject;
    .restart local v10    # "smsMessage":Ljava/lang/String;
    .restart local v11    # "to":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v14, "sending"

    goto :goto_2

    .line 262
    :cond_4
    const-string v14, "pending"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 279
    .end local v7    # "jsSentMsg":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 280
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method
