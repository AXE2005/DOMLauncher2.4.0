.class public Lorg/apache/cordova/filetransfer/FileTransfer;
.super Lorg/apache/cordova/CordovaPlugin;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/filetransfer/FileTransfer$ExposedGZIPInputStream;,
        Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;,
        Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;,
        Lorg/apache/cordova/filetransfer/FileTransfer$TrackingGZIPInputStream;,
        Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    }
.end annotation


# static fields
.field public static ABORTED_ERR:I = 0x0

.field private static final BOUNDARY:Ljava/lang/String; = "+++++"

.field public static CONNECTION_ERR:I = 0x0

.field private static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field public static FILE_NOT_FOUND_ERR:I = 0x0

.field public static INVALID_URL_ERR:I = 0x0

.field private static final LINE_END:Ljava/lang/String; = "\r\n"

.field private static final LINE_START:Ljava/lang/String; = "--"

.field private static final LOG_TAG:Ljava/lang/String; = "FileTransfer"

.field private static final MAX_BUFFER_SIZE:I = 0x4000

.field public static NOT_MODIFIED_ERR:I

.field private static activeRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final trustAllCerts:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 76
    sput v1, Lorg/apache/cordova/filetransfer/FileTransfer;->FILE_NOT_FOUND_ERR:I

    .line 77
    const/4 v0, 0x2

    sput v0, Lorg/apache/cordova/filetransfer/FileTransfer;->INVALID_URL_ERR:I

    .line 78
    const/4 v0, 0x3

    sput v0, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    .line 79
    const/4 v0, 0x4

    sput v0, Lorg/apache/cordova/filetransfer/FileTransfer;->ABORTED_ERR:I

    .line 80
    const/4 v0, 0x5

    sput v0, Lorg/apache/cordova/filetransfer/FileTransfer;->NOT_MODIFIED_ERR:I

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    .line 560
    new-instance v0, Lorg/apache/cordova/filetransfer/FileTransfer$1;

    invoke-direct {v0}, Lorg/apache/cordova/filetransfer/FileTransfer$1;-><init>()V

    sput-object v0, Lorg/apache/cordova/filetransfer/FileTransfer;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    .line 566
    new-array v0, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/cordova/filetransfer/FileTransfer$2;

    invoke-direct {v2}, Lorg/apache/cordova/filetransfer/FileTransfer$2;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/cordova/filetransfer/FileTransfer;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method private abort(Ljava/lang/String;)V
    .locals 3
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 963
    sget-object v2, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 964
    :try_start_0
    sget-object v1, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    .line 963
    .local v0, "context":Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    if-eqz v0, :cond_0

    .line 968
    iget-object v1, p0, Lorg/apache/cordova/filetransfer/FileTransfer;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lorg/apache/cordova/filetransfer/FileTransfer$5;

    invoke-direct {v2, p0, v0}, Lorg/apache/cordova/filetransfer/FileTransfer$5;-><init>(Lorg/apache/cordova/filetransfer/FileTransfer;Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 986
    :cond_0
    return-void

    .line 963
    .end local v0    # "context":Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$0()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 588
    invoke-static {p0}, Lorg/apache/cordova/filetransfer/FileTransfer;->trustAllHosts(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 560
    sget-object v0, Lorg/apache/cordova/filetransfer/FileTransfer;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/cordova/filetransfer/FileTransfer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lorg/apache/cordova/filetransfer/FileTransfer;->getCookies(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 197
    invoke-static {p0, p1}, Lorg/apache/cordova/filetransfer/FileTransfer;->addHeadersToRequest(Ljava/net/URLConnection;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$5(Ljava/io/Closeable;)V
    .locals 0

    .prologue
    .line 542
    invoke-static {p0}, Lorg/apache/cordova/filetransfer/FileTransfer;->safeClose(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$6(Ljava/net/URLConnection;)Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-static {p0}, Lorg/apache/cordova/filetransfer/FileTransfer;->getInputStream(Ljava/net/URLConnection;)Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 603
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/cordova/filetransfer/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 645
    invoke-static/range {p0 .. p5}, Lorg/apache/cordova/filetransfer/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static addHeadersToRequest(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
    .locals 5
    .param p0, "connection"    # Ljava/net/URLConnection;
    .param p1, "headers"    # Lorg/json/JSONObject;

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 214
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    return-void

    .line 200
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "headerKey":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 202
    .local v1, "headerValues":Lorg/json/JSONArray;
    if-nez v1, :cond_2

    .line 203
    new-instance v1, Lorg/json/JSONArray;

    .end local v1    # "headerValues":Lorg/json/JSONArray;
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 204
    .restart local v1    # "headerValues":Lorg/json/JSONArray;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 206
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 208
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "headerKey":Ljava/lang/String;
    .end local v1    # "headerValues":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "errorCode"    # I
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "httpStatus"    # Ljava/lang/Integer;
    .param p5, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 646
    const/4 v1, 0x0

    .line 648
    .local v1, "error":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .end local v1    # "error":Lorg/json/JSONObject;
    .local v2, "error":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "code"

    invoke-virtual {v2, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 650
    const-string v4, "source"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 651
    const-string v4, "target"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    if-eqz p3, :cond_0

    .line 654
    const-string v4, "body"

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    :cond_0
    if-eqz p4, :cond_1

    .line 657
    const-string v4, "http_status"

    invoke-virtual {v2, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    :cond_1
    if-eqz p5, :cond_4

    .line 660
    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 661
    .local v3, "msg":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 662
    :cond_2
    invoke-virtual {p5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 664
    :cond_3
    const-string v4, "exception"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 669
    .end local v2    # "error":Lorg/json/JSONObject;
    .end local v3    # "msg":Ljava/lang/String;
    .restart local v1    # "error":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    const-string v4, "FileTransfer"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 666
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "error":Lorg/json/JSONObject;
    .restart local v2    # "error":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "error":Lorg/json/JSONObject;
    .restart local v1    # "error":Lorg/json/JSONObject;
    goto :goto_1

    .end local v1    # "error":Lorg/json/JSONObject;
    .restart local v2    # "error":Lorg/json/JSONObject;
    :cond_4
    move-object v1, v2

    .end local v2    # "error":Lorg/json/JSONObject;
    .restart local v1    # "error":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method private static createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .locals 13
    .param p0, "errorCode"    # I
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "connection"    # Ljava/net/URLConnection;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 605
    const/4 v10, 0x0

    .line 606
    .local v10, "httpStatus":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    .local v7, "bodyBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 608
    .local v4, "body":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 610
    :try_start_0
    move-object/from16 v0, p3

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 611
    move-object/from16 v0, p3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 612
    check-cast p3, Ljava/net/HttpURLConnection;

    .end local p3    # "connection":Ljava/net/URLConnection;
    invoke-virtual/range {p3 .. p3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    .line 613
    .local v9, "err":Ljava/io/InputStream;
    if-eqz v9, :cond_1

    .line 615
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, v9, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v12, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .local v12, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 618
    .local v11, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v11, :cond_2

    .line 625
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 627
    :try_start_2
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 637
    .end local v9    # "err":Ljava/io/InputStream;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lorg/apache/cordova/filetransfer/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1

    .line 619
    .restart local v9    # "err":Ljava/io/InputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 621
    if-eqz v11, :cond_0

    .line 622
    const/16 v1, 0xa

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 626
    .end local v11    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 627
    :try_start_4
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 628
    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 632
    .end local v9    # "err":Ljava/io/InputStream;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v8

    .line 633
    .local v8, "e":Ljava/lang/Throwable;
    const-string v1, "FileTransfer"

    const-string v2, "Error getting HTTP status code from connection."

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 26
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "args"    # Lorg/json/JSONArray;
    .param p4, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 697
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "download "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " to "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v3}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v11

    .line 701
    .local v11, "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v7

    .line 702
    .local v7, "trustEveryone":Z
    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 703
    .local v6, "objectId":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 705
    .local v15, "headers":Lorg/json/JSONObject;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v13

    .line 707
    .local v13, "sourceUri":Landroid/net/Uri;
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 709
    .local v22, "tmpTarget":Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 708
    .end local v22    # "tmpTarget":Landroid/net/Uri;
    :goto_0
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    .line 711
    .local v12, "targetUri":Landroid/net/Uri;
    invoke-static {v13}, Lorg/apache/cordova/CordovaResourceApi;->getUriType(Landroid/net/Uri;)I

    move-result v23

    .line 712
    .local v23, "uriType":I
    const/4 v3, 0x6

    move/from16 v0, v23

    if-ne v0, v3, :cond_1

    const/4 v8, 0x1

    .line 713
    .local v8, "useHttps":Z
    :goto_1
    if-nez v8, :cond_2

    const/4 v3, 0x5

    move/from16 v0, v23

    if-eq v0, v3, :cond_2

    const/4 v14, 0x1

    .line 714
    .local v14, "isLocalTransfer":Z
    :goto_2
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_3

    .line 715
    sget v3, Lorg/apache/cordova/filetransfer/FileTransfer;->INVALID_URL_ERR:I

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v6    # "objectId":Ljava/lang/String;
    move-result-object v7

    .end local v7    # "trustEveryone":Z
    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/cordova/filetransfer/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    .end local v8    # "useHttps":Z
    move-result-object v16

    .line 716
    .local v16, "error":Lorg/json/JSONObject;
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Unsupported URI: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 956
    .end local v16    # "error":Lorg/json/JSONObject;
    :goto_3
    return-void

    .line 709
    .end local v12    # "targetUri":Landroid/net/Uri;
    .end local v14    # "isLocalTransfer":Z
    .end local v23    # "uriType":I
    .restart local v6    # "objectId":Ljava/lang/String;
    .restart local v7    # "trustEveryone":Z
    .restart local v22    # "tmpTarget":Landroid/net/Uri;
    :cond_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v22

    goto :goto_0

    .line 712
    .end local v22    # "tmpTarget":Landroid/net/Uri;
    .restart local v12    # "targetUri":Landroid/net/Uri;
    .restart local v23    # "uriType":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 713
    .restart local v8    # "useHttps":Z
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 726
    .restart local v14    # "isLocalTransfer":Z
    :cond_3
    const/16 v21, 0x0

    .line 727
    .local v21, "shouldAllowRequest":Ljava/lang/Boolean;
    if-eqz v14, :cond_4

    .line 728
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 730
    :cond_4
    if-nez v21, :cond_5

    .line 732
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getWhitelist"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 733
    .local v18, "gwl":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/cordova/Whitelist;

    .line 734
    .local v24, "whitelist":Lorg/apache/cordova/Whitelist;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/Whitelist;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v21

    .line 740
    .end local v18    # "gwl":Ljava/lang/reflect/Method;
    .end local v24    # "whitelist":Lorg/apache/cordova/Whitelist;
    :cond_5
    :goto_4
    if-nez v21, :cond_6

    .line 742
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getPluginManager"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 743
    .local v17, "gpm":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/cordova/PluginManager;

    .line 744
    .local v19, "pm":Lorg/apache/cordova/PluginManager;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "shouldAllowRequest"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v25, Ljava/lang/String;

    aput-object v25, v9, v10

    invoke-virtual {v3, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    .line 745
    .local v20, "san":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v21, v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 752
    .end local v17    # "gpm":Ljava/lang/reflect/Method;
    .end local v19    # "pm":Lorg/apache/cordova/PluginManager;
    .end local v20    # "san":Ljava/lang/reflect/Method;
    :cond_6
    :goto_5
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 753
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Source URL is not in white list: \'"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "\'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    sget v3, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    const/4 v6, 0x0

    const/16 v4, 0x191

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v6    # "objectId":Ljava/lang/String;
    move-result-object v7

    .end local v7    # "trustEveryone":Z
    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/cordova/filetransfer/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    .end local v8    # "useHttps":Z
    move-result-object v16

    .line 755
    .restart local v16    # "error":Lorg/json/JSONObject;
    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_3

    .line 760
    .end local v16    # "error":Lorg/json/JSONObject;
    .restart local v6    # "objectId":Ljava/lang/String;
    .restart local v7    # "trustEveryone":Z
    .restart local v8    # "useHttps":Z
    :cond_7
    new-instance v5, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v5, v0, v1, v2}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 761
    .local v5, "context":Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;
    sget-object v4, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    monitor-enter v4

    .line 762
    :try_start_2
    sget-object v3, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 765
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v25

    new-instance v3, Lorg/apache/cordova/filetransfer/FileTransfer$4;

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v15}, Lorg/apache/cordova/filetransfer/FileTransfer$4;-><init>(Lorg/apache/cordova/filetransfer/FileTransfer;Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CordovaResourceApi;Landroid/net/Uri;Landroid/net/Uri;ZLorg/json/JSONObject;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 761
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 748
    .end local v5    # "context":Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;
    :catch_0
    move-exception v3

    goto :goto_5

    .line 747
    :catch_1
    move-exception v3

    goto :goto_5

    .line 746
    :catch_2
    move-exception v3

    goto :goto_5

    .line 737
    :catch_3
    move-exception v3

    goto/16 :goto_4

    .line 736
    :catch_4
    move-exception v3

    goto/16 :goto_4

    .line 735
    :catch_5
    move-exception v3

    goto/16 :goto_4
.end method

.method private static getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "args"    # Lorg/json/JSONArray;
    .param p1, "position"    # I
    .param p2, "defaultString"    # Ljava/lang/String;

    .prologue
    .line 680
    move-object v0, p2

    .line 681
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 682
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 683
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    :cond_0
    move-object v0, p2

    .line 687
    :cond_1
    return-object v0
.end method

.method private getCookies(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v4, 0x0

    .line 218
    .local v4, "gotCookie":Z
    const/4 v1, 0x0

    .line 219
    .local v1, "cookie":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 221
    .local v6, "webViewClass":Ljava/lang/Class;
    :try_start_0
    const-string v7, "getCookieManager"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 222
    .local v3, "gcmMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 223
    .local v5, "iccmClass":Ljava/lang/Class;
    const-string v7, "getCookie"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 227
    .local v2, "gcMethod":Ljava/lang/reflect/Method;
    iget-object v7, p0, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 226
    invoke-virtual {v5, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 228
    aput-object p1, v8, v9

    .line 225
    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    const/4 v4, 0x1

    .line 237
    .end local v2    # "gcMethod":Ljava/lang/reflect/Method;
    .end local v3    # "gcmMethod":Ljava/lang/reflect/Method;
    .end local v5    # "iccmClass":Ljava/lang/Class;
    :goto_0
    if-nez v4, :cond_0

    .line 238
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    :cond_0
    return-object v1

    .line 234
    :catch_0
    move-exception v7

    goto :goto_0

    .line 233
    :catch_1
    move-exception v7

    goto :goto_0

    .line 232
    :catch_2
    move-exception v7

    goto :goto_0

    .line 231
    :catch_3
    move-exception v7

    goto :goto_0
.end method

.method private static getInputStream(Ljava/net/URLConnection;)Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    .locals 4
    .param p0, "conn"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "encoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    new-instance v1, Lorg/apache/cordova/filetransfer/FileTransfer$TrackingGZIPInputStream;

    new-instance v2, Lorg/apache/cordova/filetransfer/FileTransfer$ExposedGZIPInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/cordova/filetransfer/FileTransfer$ExposedGZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lorg/apache/cordova/filetransfer/FileTransfer$TrackingGZIPInputStream;-><init>(Lorg/apache/cordova/filetransfer/FileTransfer$ExposedGZIPInputStream;)V

    .line 556
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 543
    if-eqz p0, :cond_0

    .line 545
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static trustAllHosts(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 7
    .param p0, "connection"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    .line 590
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 593
    .local v2, "oldFactory":Ljavax/net/ssl/SSLSocketFactory;
    :try_start_0
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 594
    .local v3, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    sget-object v5, Lorg/apache/cordova/filetransfer/FileTransfer;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 595
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 596
    .local v1, "newFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v1    # "newFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v3    # "sc":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-object v2

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "FileTransfer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upload(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 25
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "args"    # Lorg/json/JSONArray;
    .param p4, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 258
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "upload "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " to "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v3, 0x2

    const-string v4, "file"

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lorg/apache/cordova/filetransfer/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 262
    .local v15, "fileKey":Ljava/lang/String;
    const/4 v3, 0x3

    const-string v4, "image.jpg"

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lorg/apache/cordova/filetransfer/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 263
    .local v16, "fileName":Ljava/lang/String;
    const/4 v3, 0x4

    const-string v4, "image/jpeg"

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lorg/apache/cordova/filetransfer/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 264
    .local v17, "mimeType":Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 265
    .local v14, "params":Lorg/json/JSONObject;
    :goto_0
    const/4 v3, 0x6

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v7

    .line 267
    .local v7, "trustEveryone":Z
    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v19, 0x0

    .line 269
    .local v19, "chunkedMode":Z
    :goto_1
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "headers"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 270
    .local v13, "headers":Lorg/json/JSONObject;
    :goto_2
    const/16 v3, 0x9

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "objectId":Ljava/lang/String;
    const/16 v3, 0xa

    const-string v4, "POST"

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lorg/apache/cordova/filetransfer/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 273
    .local v11, "httpMethod":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v3}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v9

    .line 275
    .local v9, "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "fileKey: "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "fileName: "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "mimeType: "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "params: "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "trustEveryone: "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "chunkedMode: "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "headers: "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "objectId: "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "httpMethod: "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    .line 287
    .local v10, "targetUri":Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 289
    .local v22, "tmpSrc":Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 288
    .end local v22    # "tmpSrc":Landroid/net/Uri;
    :goto_3
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v18

    .line 291
    .local v18, "sourceUri":Landroid/net/Uri;
    invoke-static {v10}, Lorg/apache/cordova/CordovaResourceApi;->getUriType(Landroid/net/Uri;)I

    move-result v23

    .line 292
    .local v23, "uriType":I
    const/4 v3, 0x6

    move/from16 v0, v23

    if-ne v0, v3, :cond_4

    const/4 v8, 0x1

    .line 293
    .local v8, "useHttps":Z
    :goto_4
    const/4 v3, 0x5

    move/from16 v0, v23

    if-eq v0, v3, :cond_5

    if-nez v8, :cond_5

    .line 294
    sget v3, Lorg/apache/cordova/filetransfer/FileTransfer;->INVALID_URL_ERR:I

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v6    # "objectId":Ljava/lang/String;
    move-result-object v7

    .end local v7    # "trustEveryone":Z
    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/cordova/filetransfer/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    .end local v8    # "useHttps":Z
    move-result-object v21

    .line 295
    .local v21, "error":Lorg/json/JSONObject;
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "Unsupported URI: "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 540
    .end local v21    # "error":Lorg/json/JSONObject;
    :goto_5
    return-void

    .line 264
    .end local v9    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    .end local v10    # "targetUri":Landroid/net/Uri;
    .end local v11    # "httpMethod":Ljava/lang/String;
    .end local v13    # "headers":Lorg/json/JSONObject;
    .end local v14    # "params":Lorg/json/JSONObject;
    .end local v18    # "sourceUri":Landroid/net/Uri;
    .end local v19    # "chunkedMode":Z
    .end local v23    # "uriType":I
    :cond_0
    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    goto/16 :goto_0

    .line 267
    .restart local v7    # "trustEveryone":Z
    .restart local v14    # "params":Lorg/json/JSONObject;
    :cond_1
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 269
    .restart local v19    # "chunkedMode":Z
    :cond_2
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    goto/16 :goto_2

    .line 289
    .restart local v6    # "objectId":Ljava/lang/String;
    .restart local v9    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    .restart local v10    # "targetUri":Landroid/net/Uri;
    .restart local v11    # "httpMethod":Ljava/lang/String;
    .restart local v13    # "headers":Lorg/json/JSONObject;
    .restart local v22    # "tmpSrc":Landroid/net/Uri;
    :cond_3
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v22

    goto :goto_3

    .line 292
    .end local v22    # "tmpSrc":Landroid/net/Uri;
    .restart local v18    # "sourceUri":Landroid/net/Uri;
    .restart local v23    # "uriType":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    .line 300
    .restart local v8    # "useHttps":Z
    :cond_5
    new-instance v5, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v5, v0, v1, v2}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 301
    .local v5, "context":Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;
    sget-object v4, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    monitor-enter v4

    .line 302
    :try_start_0
    sget-object v3, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v24

    new-instance v3, Lorg/apache/cordova/filetransfer/FileTransfer$3;

    move-object/from16 v4, p0

    move-object/from16 v12, p2

    move-object/from16 v20, p1

    invoke-direct/range {v3 .. v20}, Lorg/apache/cordova/filetransfer/FileTransfer$3;-><init>(Lorg/apache/cordova/filetransfer/FileTransfer;Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;Ljava/lang/String;ZZLorg/apache/cordova/CordovaResourceApi;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 301
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 178
    const-string v5, "upload"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "download"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 179
    :cond_0
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "source":Ljava/lang/String;
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "target":Ljava/lang/String;
    const-string v4, "upload"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    invoke-direct {p0, v1, v2, p2, p3}, Lorg/apache/cordova/filetransfer/FileTransfer;->upload(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 194
    .end local v1    # "source":Ljava/lang/String;
    .end local v2    # "target":Ljava/lang/String;
    :goto_0
    return v3

    .line 185
    .restart local v1    # "source":Ljava/lang/String;
    .restart local v2    # "target":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v1, v2, p2, p3}, Lorg/apache/cordova/filetransfer/FileTransfer;->download(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 188
    .end local v1    # "source":Ljava/lang/String;
    .end local v2    # "target":Ljava/lang/String;
    :cond_2
    const-string v5, "abort"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 189
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "objectId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/apache/cordova/filetransfer/FileTransfer;->abort(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .end local v0    # "objectId":Ljava/lang/String;
    :cond_3
    move v3, v4

    .line 194
    goto :goto_0
.end method
