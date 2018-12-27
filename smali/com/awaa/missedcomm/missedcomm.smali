.class public Lcom/awaa/missedcomm/missedcomm;
.super Lorg/apache/cordova/CordovaPlugin;
.source "missedcomm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/awaa/missedcomm/missedcomm$SMSTask;,
        Lcom/awaa/missedcomm/missedcomm$callsTask;
    }
.end annotation


# instance fields
.field callCount:I

.field callsCallback:Ljava/lang/String;

.field callsTimer:Ljava/util/Timer;

.field callsTiming:I

.field smsCallback:Ljava/lang/String;

.field smsCount:I

.field smsTimer:Ljava/util/Timer;

.field smsTiming:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 21
    iput v0, p0, Lcom/awaa/missedcomm/missedcomm;->smsCount:I

    .line 22
    iput v0, p0, Lcom/awaa/missedcomm/missedcomm;->callCount:I

    .line 24
    iput v0, p0, Lcom/awaa/missedcomm/missedcomm;->smsTiming:I

    .line 26
    iput v0, p0, Lcom/awaa/missedcomm/missedcomm;->callsTiming:I

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/awaa/missedcomm/missedcomm;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/awaa/missedcomm/missedcomm;->smsRun(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/awaa/missedcomm/missedcomm;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/awaa/missedcomm/missedcomm;->callsRun(Ljava/lang/String;)V

    return-void
.end method

.method private callsRun(Ljava/lang/String;)V
    .locals 10
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 117
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "numberlabel"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "type"

    aput-object v1, v2, v0

    .line 119
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "type=3 AND is_read=0"

    .line 124
    .local v3, "where":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 130
    .local v6, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 132
    .local v8, "nummissedCalls":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 134
    iget v0, p0, Lcom/awaa/missedcomm/missedcomm;->callCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    .line 136
    iput v8, p0, Lcom/awaa/missedcomm/missedcomm;->callCount:I

    .line 145
    :cond_0
    :goto_1
    return-void

    .line 125
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "nummissedCalls":I
    :catch_0
    move-exception v7

    .line 126
    .local v7, "e":Ljava/lang/Exception;
    const-string v3, "type=3 AND new=1"

    .line 127
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v9

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6    # "c":Landroid/database/Cursor;
    goto :goto_0

    .line 137
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "nummissedCalls":I
    :cond_1
    iget v0, p0, Lcom/awaa/missedcomm/missedcomm;->callCount:I

    if-eq v0, v8, :cond_0

    .line 140
    iput v8, p0, Lcom/awaa/missedcomm/missedcomm;->callCount:I

    .line 141
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private smsRun(Ljava/lang/String;)V
    .locals 11
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v6, "read"

    .line 63
    .local v6, "SMS_READ_COLUMN":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "=0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "UNREAD_CONDITION":Ljava/lang/String;
    const-string v8, "content://sms/inbox"

    .line 67
    .local v8, "folder":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 68
    .local v1, "mSmsQueryUri":Landroid/net/Uri;
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "person"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "address"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "body"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "date"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "status"

    aput-object v4, v2, v0

    .line 69
    .local v2, "columns":[Ljava/lang/String;
    const-string v5, "date ASC"

    .line 70
    .local v5, "sortOrder":Ljava/lang/String;
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 71
    .local v7, "c":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 72
    .local v9, "nummissedSMS":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 73
    iget v0, p0, Lcom/awaa/missedcomm/missedcomm;->smsCount:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 74
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "("

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ")"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    .line 75
    iput v9, p0, Lcom/awaa/missedcomm/missedcomm;->smsCount:I

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget v0, p0, Lcom/awaa/missedcomm/missedcomm;->smsCount:I

    if-eq v0, v9, :cond_0

    .line 79
    iput v9, p0, Lcom/awaa/missedcomm/missedcomm;->smsCount:I

    .line 80
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "("

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ")"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startCalls(ILjava/lang/String;)V
    .locals 6
    .param p1, "timing"    # I
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p2, p0, Lcom/awaa/missedcomm/missedcomm;->callsCallback:Ljava/lang/String;

    .line 92
    iput p1, p0, Lcom/awaa/missedcomm/missedcomm;->callsTiming:I

    .line 93
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 94
    .local v0, "callsTimer":Ljava/util/Timer;
    new-instance v1, Lcom/awaa/missedcomm/missedcomm$callsTask;

    invoke-direct {v1, p0}, Lcom/awaa/missedcomm/missedcomm$callsTask;-><init>(Lcom/awaa/missedcomm/missedcomm;)V

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 95
    return-void
.end method

.method private startSMS(ILjava/lang/String;)V
    .locals 6
    .param p1, "timing"    # I
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p2, p0, Lcom/awaa/missedcomm/missedcomm;->smsCallback:Ljava/lang/String;

    .line 32
    iput p1, p0, Lcom/awaa/missedcomm/missedcomm;->smsTiming:I

    .line 34
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 35
    .local v0, "smsTimer":Ljava/util/Timer;
    new-instance v1, Lcom/awaa/missedcomm/missedcomm$SMSTask;

    invoke-direct {v1, p0}, Lcom/awaa/missedcomm/missedcomm$SMSTask;-><init>(Lcom/awaa/missedcomm/missedcomm;)V

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 38
    return-void
.end method

.method private stopCalls()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->callsTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->callsTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/awaa/missedcomm/missedcomm;->callCount:I

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->callsCallback:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->callsTimer:Ljava/util/Timer;

    .line 114
    :cond_0
    return-void
.end method

.method private stopSMS()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->smsTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->smsTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/awaa/missedcomm/missedcomm;->smsCount:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->smsCallback:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->smsTimer:Ljava/util/Timer;

    .line 59
    :cond_0
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
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 182
    const-string v3, "sms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "calls"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 183
    :cond_0
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "flag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "flag":Ljava/lang/String;
    const-string v3, "sms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    const-string v3, "enable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "timing"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 188
    .local v2, "timing":I
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "callback"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "callback":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/awaa/missedcomm/missedcomm;->startSMS(ILjava/lang/String;)V

    .line 190
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "returnVal"

    const-string v5, "enabled"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 193
    .end local v0    # "callback":Ljava/lang/String;
    .end local v2    # "timing":I
    :cond_1
    const-string v3, "disable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    invoke-direct {p0}, Lcom/awaa/missedcomm/missedcomm;->stopSMS()V

    .line 195
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "returnVal"

    const-string v5, "disabled"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 200
    :cond_2
    const-string v3, "calls"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 201
    const-string v3, "enable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "timing"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 203
    .restart local v2    # "timing":I
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "callback"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0    # "callback":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/awaa/missedcomm/missedcomm;->startCalls(ILjava/lang/String;)V

    .line 205
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "returnVal"

    const-string v5, "enabled"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 208
    .end local v0    # "callback":Ljava/lang/String;
    .end local v2    # "timing":I
    :cond_3
    const-string v3, "disable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 209
    invoke-direct {p0}, Lcom/awaa/missedcomm/missedcomm;->stopCalls()V

    .line 210
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "returnVal"

    const-string v5, "disabled"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 215
    .end local v1    # "flag":Ljava/lang/String;
    :cond_4
    const-string v3, "check"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 216
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "flag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .restart local v1    # "flag":Ljava/lang/String;
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "callback"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .restart local v0    # "callback":Ljava/lang/String;
    const-string v3, "calls"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 219
    iput v7, p0, Lcom/awaa/missedcomm/missedcomm;->callCount:I

    .line 220
    invoke-direct {p0, v0}, Lcom/awaa/missedcomm/missedcomm;->callsRun(Ljava/lang/String;)V

    .line 222
    :cond_5
    const-string v3, "sms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 223
    iput v7, p0, Lcom/awaa/missedcomm/missedcomm;->smsCount:I

    .line 224
    invoke-direct {p0, v0}, Lcom/awaa/missedcomm/missedcomm;->smsRun(Ljava/lang/String;)V

    .line 226
    :cond_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "returnVal"

    const-string v5, "checked"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 229
    .end local v0    # "callback":Ljava/lang/String;
    .end local v1    # "flag":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x1

    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->smsTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/awaa/missedcomm/missedcomm;->stopSMS()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->callsTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/awaa/missedcomm/missedcomm;->stopCalls()V

    .line 176
    :cond_1
    return-void
.end method

.method public onPause(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->smsTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/awaa/missedcomm/missedcomm;->stopSMS()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm;->callsTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/awaa/missedcomm/missedcomm;->stopCalls()V

    .line 157
    :cond_1
    return-void
.end method

.method public onResume(Z)V
    .locals 3
    .param p1, "multitasking"    # Z

    .prologue
    const/4 v2, -0x1

    .line 162
    iget v0, p0, Lcom/awaa/missedcomm/missedcomm;->smsCount:I

    if-eq v0, v2, :cond_0

    .line 163
    iget v0, p0, Lcom/awaa/missedcomm/missedcomm;->smsTiming:I

    iget-object v1, p0, Lcom/awaa/missedcomm/missedcomm;->smsCallback:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/awaa/missedcomm/missedcomm;->startSMS(ILjava/lang/String;)V

    .line 166
    :cond_0
    iget v0, p0, Lcom/awaa/missedcomm/missedcomm;->callCount:I

    if-eq v0, v2, :cond_1

    .line 167
    iget v0, p0, Lcom/awaa/missedcomm/missedcomm;->callsTiming:I

    iget-object v1, p0, Lcom/awaa/missedcomm/missedcomm;->callsCallback:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/awaa/missedcomm/missedcomm;->startCalls(ILjava/lang/String;)V

    .line 169
    :cond_1
    return-void
.end method
