.class Lorg/apache/cordova/filetransfer/FileTransfer$3;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/filetransfer/FileTransfer;->upload(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

.field private final synthetic val$chunkedMode:Z

.field private final synthetic val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

.field private final synthetic val$fileKey:Ljava/lang/String;

.field private final synthetic val$fileName:Ljava/lang/String;

.field private final synthetic val$headers:Lorg/json/JSONObject;

.field private final synthetic val$httpMethod:Ljava/lang/String;

.field private final synthetic val$mimeType:Ljava/lang/String;

.field private final synthetic val$objectId:Ljava/lang/String;

.field private final synthetic val$params:Lorg/json/JSONObject;

.field private final synthetic val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

.field private final synthetic val$source:Ljava/lang/String;

.field private final synthetic val$sourceUri:Landroid/net/Uri;

.field private final synthetic val$target:Ljava/lang/String;

.field private final synthetic val$targetUri:Landroid/net/Uri;

.field private final synthetic val$trustEveryone:Z

.field private final synthetic val$useHttps:Z


# direct methods
.method constructor <init>(Lorg/apache/cordova/filetransfer/FileTransfer;Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;Ljava/lang/String;ZZLorg/apache/cordova/CordovaResourceApi;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

    iput-object p2, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    iput-object p3, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$objectId:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$trustEveryone:Z

    iput-boolean p5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$useHttps:Z

    iput-object p6, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    iput-object p7, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$targetUri:Landroid/net/Uri;

    iput-object p8, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$httpMethod:Ljava/lang/String;

    iput-object p9, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$target:Ljava/lang/String;

    iput-object p10, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$headers:Lorg/json/JSONObject;

    iput-object p11, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$params:Lorg/json/JSONObject;

    iput-object p12, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$fileKey:Ljava/lang/String;

    iput-object p13, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$fileName:Ljava/lang/String;

    iput-object p14, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$mimeType:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$sourceUri:Landroid/net/Uri;

    move/from16 v0, p16

    iput-boolean v0, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$chunkedMode:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$source:Ljava/lang/String;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 40

    .prologue
    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->aborted:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const/4 v10, 0x0

    .line 311
    .local v10, "conn":Ljava/net/HttpURLConnection;
    const/16 v19, 0x0

    .line 312
    .local v19, "oldHostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/16 v20, 0x0

    .line 313
    .local v20, "oldSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/16 v34, 0x0

    .line 314
    .local v34, "totalBytes":I
    const/4 v14, -0x1

    .line 317
    .local v14, "fixedLength":I
    :try_start_0
    new-instance v29, Lorg/apache/cordova/filetransfer/FileUploadResult;

    invoke-direct/range {v29 .. v29}, Lorg/apache/cordova/filetransfer/FileUploadResult;-><init>()V

    .line 318
    .local v29, "result":Lorg/apache/cordova/filetransfer/FileUploadResult;
    new-instance v24, Lorg/apache/cordova/filetransfer/FileProgressResult;

    invoke-direct/range {v24 .. v24}, Lorg/apache/cordova/filetransfer/FileProgressResult;-><init>()V

    .line 322
    .local v24, "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$targetUri:Landroid/net/Uri;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lorg/apache/cordova/CordovaResourceApi;->createHttpConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v10

    .line 323
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_2

    .line 325
    move-object v0, v10

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v15, v0

    .line 326
    .local v15, "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {v15}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$1(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v20

    .line 328
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v19

    .line 330
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$2()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 334
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_2
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 337
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 340
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$httpMethod:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 344
    const-string v36, "Content-Type"

    const-string v37, "multipart/form-data; boundary=+++++"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$target:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$3(Lorg/apache/cordova/filetransfer/FileTransfer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 349
    .local v11, "cookie":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 350
    const-string v36, "Cookie"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$headers:Lorg/json/JSONObject;

    move-object/from16 v36, v0

    if-eqz v36, :cond_4

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$headers:Lorg/json/JSONObject;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-static {v10, v0}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$4(Ljava/net/URLConnection;Lorg/json/JSONObject;)V

    .line 362
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 364
    .local v4, "beforeData":Ljava/lang/StringBuilder;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$params:Lorg/json/JSONObject;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_5
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result v36

    if-nez v36, :cond_8

    .line 379
    .end local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    :try_start_2
    const-string v36, "--"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "+++++"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v36, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$fileKey:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\";"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string v36, " filename=\""

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$fileName:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x22

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v36, "Content-Type: "

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$mimeType:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    const-string v37, "UTF-8"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 384
    .local v5, "beforeDataBytes":[B
    const-string v36, "\r\n--+++++--\r\n"

    const-string v37, "UTF-8"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v33

    .line 388
    .local v33, "tailParamsBytes":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$sourceUri:Landroid/net/Uri;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object v26

    .line 390
    .local v26, "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    array-length v0, v5

    move/from16 v36, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v37, v0

    add-int v31, v36, v37

    .line 391
    .local v31, "stringLength":I
    move-object/from16 v0, v26

    iget-wide v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-ltz v36, :cond_6

    .line 392
    move-object/from16 v0, v26

    iget-wide v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v36, v0

    add-int v14, v36, v31

    .line 393
    const/16 v36, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/cordova/filetransfer/FileProgressResult;->setLengthComputable(Z)V

    .line 394
    int-to-long v0, v14

    move-wide/from16 v36, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/filetransfer/FileProgressResult;->setTotal(J)V

    .line 396
    :cond_6
    const-string v36, "FileTransfer"

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "Content Length: "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$chunkedMode:Z

    move/from16 v36, v0

    if-eqz v36, :cond_9

    sget v36, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_9

    :cond_7
    const/16 v35, 0x1

    .line 401
    .local v35, "useChunkedMode":Z
    :goto_3
    if-nez v35, :cond_a

    const/16 v36, -0x1

    move/from16 v0, v36

    if-eq v14, v0, :cond_a

    const/16 v35, 0x0

    .line 403
    :goto_4
    if-eqz v35, :cond_b

    .line 404
    const/16 v36, 0x4000

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 407
    const-string v36, "Transfer-Encoding"

    const-string v37, "chunked"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_5
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 414
    const/16 v30, 0x0

    .line 416
    .local v30, "sendStream":Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v30

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v37, v0

    monitor-enter v37
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 418
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->aborted:Z

    move/from16 v36, v0

    if-eqz v36, :cond_c

    .line 419
    monitor-exit v37
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 460
    :try_start_5
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$5(Ljava/io/Closeable;)V

    .line 461
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$5(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 524
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 525
    :try_start_6
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    monitor-exit v37
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 528
    if-eqz v10, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    move-object v15, v10

    .line 532
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 533
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 534
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 365
    .end local v5    # "beforeDataBytes":[B
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .end local v26    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .end local v30    # "sendStream":Ljava/io/OutputStream;
    .end local v31    # "stringLength":I
    .end local v33    # "tailParamsBytes":[B
    .end local v35    # "useChunkedMode":Z
    .restart local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_8
    :try_start_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 366
    .local v18, "key":Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    const-string v37, "headers"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 368
    const-string v36, "--"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "+++++"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v36, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x22

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    const-string v36, "\r\n"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$params:Lorg/json/JSONObject;

    move-object/from16 v36, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v36, "\r\n"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto/16 :goto_1

    .line 375
    .end local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v18    # "key":Ljava/lang/Object;
    :catch_0
    move-exception v12

    .line 376
    .local v12, "e":Lorg/json/JSONException;
    :try_start_8
    const-string v36, "FileTransfer"

    invoke-virtual {v12}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/16 :goto_2

    .line 506
    .end local v4    # "beforeData":Ljava/lang/StringBuilder;
    .end local v11    # "cookie":Ljava/lang/String;
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v24    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .end local v29    # "result":Lorg/apache/cordova/filetransfer/FileUploadResult;
    :catch_1
    move-exception v12

    .line 507
    .local v12, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    sget v36, Lorg/apache/cordova/filetransfer/FileTransfer;->FILE_NOT_FOUND_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$source:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$target:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2, v10, v12}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$7(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v13

    .line 508
    .local v13, "error":Lorg/json/JSONObject;
    const-string v36, "FileTransfer"

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    new-instance v37, Lorg/apache/cordova/PluginResult;

    sget-object v38, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual/range {v36 .. v37}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 524
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 525
    :try_start_a
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    monitor-exit v37
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 528
    if-eqz v10, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    move-object v15, v10

    .line 532
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 533
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 534
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 400
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "error":Lorg/json/JSONObject;
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v4    # "beforeData":Ljava/lang/StringBuilder;
    .restart local v5    # "beforeDataBytes":[B
    .restart local v11    # "cookie":Ljava/lang/String;
    .restart local v24    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .restart local v26    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .restart local v29    # "result":Lorg/apache/cordova/filetransfer/FileUploadResult;
    .restart local v31    # "stringLength":I
    .restart local v33    # "tailParamsBytes":[B
    :cond_9
    const/16 v35, 0x0

    goto/16 :goto_3

    .line 401
    .restart local v35    # "useChunkedMode":Z
    :cond_a
    const/16 v35, 0x1

    goto/16 :goto_4

    .line 409
    :cond_b
    :try_start_b
    invoke-virtual {v10, v14}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto/16 :goto_5

    .line 510
    .end local v4    # "beforeData":Ljava/lang/StringBuilder;
    .end local v5    # "beforeDataBytes":[B
    .end local v11    # "cookie":Ljava/lang/String;
    .end local v24    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .end local v26    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .end local v29    # "result":Lorg/apache/cordova/filetransfer/FileUploadResult;
    .end local v31    # "stringLength":I
    .end local v33    # "tailParamsBytes":[B
    .end local v35    # "useChunkedMode":Z
    :catch_2
    move-exception v12

    .line 511
    .local v12, "e":Ljava/io/IOException;
    :try_start_c
    sget v36, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$source:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$target:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2, v10, v12}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$7(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v13

    .line 512
    .restart local v13    # "error":Lorg/json/JSONObject;
    const-string v36, "FileTransfer"

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    const-string v36, "FileTransfer"

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "Failed after uploading "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " of "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " bytes."

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    new-instance v37, Lorg/apache/cordova/PluginResult;

    sget-object v38, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual/range {v36 .. v37}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 524
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 525
    :try_start_d
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    monitor-exit v37
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    .line 528
    if-eqz v10, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    move-object v15, v10

    .line 532
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 533
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 534
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 524
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "error":Lorg/json/JSONObject;
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v4    # "beforeData":Ljava/lang/StringBuilder;
    .restart local v5    # "beforeDataBytes":[B
    .restart local v11    # "cookie":Ljava/lang/String;
    .restart local v24    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .restart local v26    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .restart local v29    # "result":Lorg/apache/cordova/filetransfer/FileUploadResult;
    .restart local v30    # "sendStream":Ljava/io/OutputStream;
    .restart local v31    # "stringLength":I
    .restart local v33    # "tailParamsBytes":[B
    .restart local v35    # "useChunkedMode":Z
    :catchall_0
    move-exception v36

    :try_start_e
    monitor-exit v37
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v36

    .line 421
    :cond_c
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iput-object v10, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->connection:Ljava/net/HttpURLConnection;

    .line 417
    monitor-exit v37
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 424
    :try_start_10
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 425
    array-length v0, v5

    move/from16 v36, v0

    add-int v34, v34, v36

    .line 428
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 429
    .local v8, "bytesAvailable":I
    const/16 v36, 0x4000

    move/from16 v0, v36

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 430
    .local v7, "bufferSize":I
    new-array v6, v7, [B

    .line 433
    .local v6, "buffer":[B
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v0, v6, v1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .line 435
    .local v9, "bytesRead":I
    const-wide/16 v22, 0x0

    .line 436
    .local v22, "prevBytesRead":J
    :goto_6
    if-gtz v9, :cond_d

    .line 456
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 457
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v36, v0

    add-int v34, v34, v36

    .line 458
    invoke-virtual/range {v30 .. v30}, Ljava/io/OutputStream;->flush()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 460
    :try_start_11
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$5(Ljava/io/Closeable;)V

    .line 461
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$5(Ljava/io/Closeable;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v37, v0

    monitor-enter v37
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 464
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->connection:Ljava/net/HttpURLConnection;

    .line 463
    monitor-exit v37
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 466
    :try_start_13
    const-string v36, "FileTransfer"

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "Sent "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " of "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v27

    .line 471
    .local v27, "responseCode":I
    const-string v36, "FileTransfer"

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "response code: "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v36, "FileTransfer"

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "response headers: "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 473
    const/16 v16, 0x0

    .line 475
    .local v16, "inStream":Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    :try_start_14
    invoke-static {v10}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$6(Ljava/net/URLConnection;)Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;

    move-result-object v16

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v37, v0

    monitor-enter v37
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 477
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->aborted:Z

    move/from16 v36, v0

    if-eqz v36, :cond_10

    .line 478
    monitor-exit v37
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 492
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v37, v0

    monitor-enter v37
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 493
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->connection:Ljava/net/HttpURLConnection;

    .line 492
    monitor-exit v37
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 495
    :try_start_18
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$5(Ljava/io/Closeable;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 524
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 525
    :try_start_19
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    monitor-exit v37
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 528
    if-eqz v10, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    move-object v15, v10

    .line 532
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 533
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 534
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 417
    .end local v6    # "buffer":[B
    .end local v7    # "bufferSize":I
    .end local v8    # "bytesAvailable":I
    .end local v9    # "bytesRead":I
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .end local v16    # "inStream":Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    .end local v22    # "prevBytesRead":J
    .end local v27    # "responseCode":I
    :catchall_1
    move-exception v36

    :try_start_1a
    monitor-exit v37
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :try_start_1b
    throw v36
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 459
    :catchall_2
    move-exception v36

    .line 460
    :try_start_1c
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$5(Ljava/io/Closeable;)V

    .line 461
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$5(Ljava/io/Closeable;)V

    .line 462
    throw v36
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    .line 515
    .end local v4    # "beforeData":Ljava/lang/StringBuilder;
    .end local v5    # "beforeDataBytes":[B
    .end local v11    # "cookie":Ljava/lang/String;
    .end local v24    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .end local v26    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .end local v29    # "result":Lorg/apache/cordova/filetransfer/FileUploadResult;
    .end local v30    # "sendStream":Ljava/io/OutputStream;
    .end local v31    # "stringLength":I
    .end local v33    # "tailParamsBytes":[B
    .end local v35    # "useChunkedMode":Z
    :catch_3
    move-exception v12

    .line 516
    .local v12, "e":Lorg/json/JSONException;
    :try_start_1d
    const-string v36, "FileTransfer"

    invoke-virtual {v12}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    new-instance v37, Lorg/apache/cordova/PluginResult;

    sget-object v38, Lorg/apache/cordova/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct/range {v37 .. v38}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual/range {v36 .. v37}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 524
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 525
    :try_start_1e
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    monitor-exit v37
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    .line 528
    if-eqz v10, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    move-object v15, v10

    .line 532
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 533
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 534
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 437
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v4    # "beforeData":Ljava/lang/StringBuilder;
    .restart local v5    # "beforeDataBytes":[B
    .restart local v6    # "buffer":[B
    .restart local v7    # "bufferSize":I
    .restart local v8    # "bytesAvailable":I
    .restart local v9    # "bytesRead":I
    .restart local v11    # "cookie":Ljava/lang/String;
    .restart local v22    # "prevBytesRead":J
    .restart local v24    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .restart local v26    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .restart local v29    # "result":Lorg/apache/cordova/filetransfer/FileUploadResult;
    .restart local v30    # "sendStream":Ljava/io/OutputStream;
    .restart local v31    # "stringLength":I
    .restart local v33    # "tailParamsBytes":[B
    .restart local v35    # "useChunkedMode":Z
    :cond_d
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v36, v0

    :try_start_1f
    move-object/from16 v0, v29

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/filetransfer/FileUploadResult;->setBytesSent(J)V

    .line 438
    const/16 v36, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v6, v1, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 439
    add-int v34, v34, v9

    .line 440
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide/32 v38, 0x19000

    add-long v38, v38, v22

    cmp-long v36, v36, v38

    if-lez v36, :cond_e

    .line 441
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 442
    const-string v36, "FileTransfer"

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "Uploaded "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " of "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " bytes"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_e
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 445
    const/16 v36, 0x4000

    move/from16 v0, v36

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 446
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v0, v6, v1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .line 449
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/filetransfer/FileProgressResult;->setLoaded(J)V

    .line 450
    new-instance v25, Lorg/apache/cordova/PluginResult;

    sget-object v36, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual/range {v24 .. v24}, Lorg/apache/cordova/filetransfer/FileProgressResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v37

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 451
    .local v25, "progressResult":Lorg/apache/cordova/PluginResult;
    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    goto/16 :goto_6

    .line 463
    .end local v25    # "progressResult":Lorg/apache/cordova/PluginResult;
    :catchall_3
    move-exception v36

    :try_start_20
    monitor-exit v37
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    :try_start_21
    throw v36
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_1
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_4
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    .line 518
    .end local v4    # "beforeData":Ljava/lang/StringBuilder;
    .end local v5    # "beforeDataBytes":[B
    .end local v6    # "buffer":[B
    .end local v7    # "bufferSize":I
    .end local v8    # "bytesAvailable":I
    .end local v9    # "bytesRead":I
    .end local v11    # "cookie":Ljava/lang/String;
    .end local v22    # "prevBytesRead":J
    .end local v24    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .end local v26    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .end local v29    # "result":Lorg/apache/cordova/filetransfer/FileUploadResult;
    .end local v30    # "sendStream":Ljava/io/OutputStream;
    .end local v31    # "stringLength":I
    .end local v33    # "tailParamsBytes":[B
    .end local v35    # "useChunkedMode":Z
    :catch_4
    move-exception v32

    .line 520
    .local v32, "t":Ljava/lang/Throwable;
    :try_start_22
    sget v36, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$source:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$target:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v32

    invoke-static {v0, v1, v2, v10, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$7(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v13

    .line 521
    .restart local v13    # "error":Lorg/json/JSONObject;
    const-string v36, "FileTransfer"

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    new-instance v37, Lorg/apache/cordova/PluginResult;

    sget-object v38, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual/range {v36 .. v37}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    .line 524
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 525
    :try_start_23
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    monitor-exit v37
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    .line 528
    if-eqz v10, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    move-object v15, v10

    .line 532
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 533
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 534
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 492
    .end local v13    # "error":Lorg/json/JSONObject;
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .end local v32    # "t":Ljava/lang/Throwable;
    .restart local v4    # "beforeData":Ljava/lang/StringBuilder;
    .restart local v5    # "beforeDataBytes":[B
    .restart local v6    # "buffer":[B
    .restart local v7    # "bufferSize":I
    .restart local v8    # "bytesAvailable":I
    .restart local v9    # "bytesRead":I
    .restart local v11    # "cookie":Ljava/lang/String;
    .restart local v16    # "inStream":Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    .restart local v22    # "prevBytesRead":J
    .restart local v24    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .restart local v26    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .restart local v27    # "responseCode":I
    .restart local v29    # "result":Lorg/apache/cordova/filetransfer/FileUploadResult;
    .restart local v30    # "sendStream":Ljava/io/OutputStream;
    .restart local v31    # "stringLength":I
    .restart local v33    # "tailParamsBytes":[B
    .restart local v35    # "useChunkedMode":Z
    :catchall_4
    move-exception v36

    :try_start_24
    monitor-exit v37
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    :try_start_25
    throw v36
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_1
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_2
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_25} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_4
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    .line 523
    .end local v4    # "beforeData":Ljava/lang/StringBuilder;
    .end local v5    # "beforeDataBytes":[B
    .end local v6    # "buffer":[B
    .end local v7    # "bufferSize":I
    .end local v8    # "bytesAvailable":I
    .end local v9    # "bytesRead":I
    .end local v11    # "cookie":Ljava/lang/String;
    .end local v16    # "inStream":Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    .end local v22    # "prevBytesRead":J
    .end local v24    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .end local v26    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .end local v27    # "responseCode":I
    .end local v29    # "result":Lorg/apache/cordova/filetransfer/FileUploadResult;
    .end local v30    # "sendStream":Ljava/io/OutputStream;
    .end local v31    # "stringLength":I
    .end local v33    # "tailParamsBytes":[B
    .end local v35    # "useChunkedMode":Z
    :catchall_5
    move-exception v36

    .line 524
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 525
    :try_start_26
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$objectId:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    monitor-exit v37
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    .line 528
    if-eqz v10, :cond_f

    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$trustEveryone:Z

    move/from16 v37, v0

    if-eqz v37, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$useHttps:Z

    move/from16 v37, v0

    if-eqz v37, :cond_f

    move-object v15, v10

    .line 532
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 533
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 534
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 537
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_f
    throw v36

    .line 524
    .restart local v4    # "beforeData":Ljava/lang/StringBuilder;
    .restart local v5    # "beforeDataBytes":[B
    .restart local v6    # "buffer":[B
    .restart local v7    # "bufferSize":I
    .restart local v8    # "bytesAvailable":I
    .restart local v9    # "bytesRead":I
    .restart local v11    # "cookie":Ljava/lang/String;
    .restart local v16    # "inStream":Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    .restart local v22    # "prevBytesRead":J
    .restart local v24    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .restart local v26    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .restart local v27    # "responseCode":I
    .restart local v29    # "result":Lorg/apache/cordova/filetransfer/FileUploadResult;
    .restart local v30    # "sendStream":Ljava/io/OutputStream;
    .restart local v31    # "stringLength":I
    .restart local v33    # "tailParamsBytes":[B
    .restart local v35    # "useChunkedMode":Z
    :catchall_6
    move-exception v36

    :try_start_27
    monitor-exit v37
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    throw v36

    .line 480
    :cond_10
    :try_start_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iput-object v10, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->connection:Ljava/net/HttpURLConnection;

    .line 476
    monitor-exit v37
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    .line 483
    :try_start_29
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    const/16 v36, 0x400

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 484
    .local v21, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v36, 0x400

    move/from16 v0, v36

    new-array v6, v0, [B

    .line 485
    const/4 v9, 0x0

    .line 487
    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;->read([B)I

    move-result v9

    if-gtz v9, :cond_11

    .line 490
    const-string v36, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_8

    move-result-object v28

    .line 492
    .local v28, "responseString":Ljava/lang/String;
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v37, v0

    monitor-enter v37
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2a} :catch_1
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_2a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_4
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    .line 493
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->connection:Ljava/net/HttpURLConnection;

    .line 492
    monitor-exit v37
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    .line 495
    :try_start_2c
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$5(Ljava/io/Closeable;)V

    .line 498
    const-string v36, "FileTransfer"

    const-string v37, "got response from server"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v36, "FileTransfer"

    const/16 v37, 0x0

    const/16 v38, 0x100

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v39

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(II)I

    move-result v38

    move-object/from16 v0, v28

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/cordova/filetransfer/FileUploadResult;->setResponseCode(I)V

    .line 503
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/cordova/filetransfer/FileUploadResult;->setResponse(Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    new-instance v37, Lorg/apache/cordova/PluginResult;

    sget-object v38, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual/range {v29 .. v29}, Lorg/apache/cordova/filetransfer/FileUploadResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v39

    invoke-direct/range {v37 .. v39}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual/range {v36 .. v37}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_2c} :catch_1
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_2c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_4
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    .line 524
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 525
    :try_start_2d
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$0()Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    monitor-exit v37
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_10

    .line 528
    if-eqz v10, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    move-object v15, v10

    .line 532
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 533
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 534
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 476
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .end local v21    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v28    # "responseString":Ljava/lang/String;
    :catchall_7
    move-exception v36

    :try_start_2e
    monitor-exit v37
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    :try_start_2f
    throw v36
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_8

    .line 491
    :catchall_8
    move-exception v36

    .line 492
    :try_start_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v37, v0

    monitor-enter v37
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_30} :catch_1
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_2
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_30} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_4
    .catchall {:try_start_30 .. :try_end_30} :catchall_5

    .line 493
    :try_start_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$3;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->connection:Ljava/net/HttpURLConnection;

    .line 492
    monitor-exit v37
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_9

    .line 495
    :try_start_32
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$5(Ljava/io/Closeable;)V

    .line 496
    throw v36
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_32} :catch_1
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_2
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_32} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_4
    .catchall {:try_start_32 .. :try_end_32} :catchall_5

    .line 488
    .restart local v21    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_11
    const/16 v36, 0x0

    :try_start_33
    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-virtual {v0, v6, v1, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_8

    goto/16 :goto_7

    .line 492
    .end local v21    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_9
    move-exception v36

    :try_start_34
    monitor-exit v37
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_9

    :try_start_35
    throw v36
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_35} :catch_1
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_2
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_35} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_4
    .catchall {:try_start_35 .. :try_end_35} :catchall_5

    .restart local v21    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v28    # "responseString":Ljava/lang/String;
    :catchall_a
    move-exception v36

    :try_start_36
    monitor-exit v37
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_a

    :try_start_37
    throw v36
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_37} :catch_1
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_2
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_37} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_4
    .catchall {:try_start_37 .. :try_end_37} :catchall_5

    .line 524
    .end local v4    # "beforeData":Ljava/lang/StringBuilder;
    .end local v5    # "beforeDataBytes":[B
    .end local v6    # "buffer":[B
    .end local v7    # "bufferSize":I
    .end local v8    # "bytesAvailable":I
    .end local v9    # "bytesRead":I
    .end local v11    # "cookie":Ljava/lang/String;
    .end local v16    # "inStream":Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    .end local v21    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v22    # "prevBytesRead":J
    .end local v24    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .end local v26    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .end local v27    # "responseCode":I
    .end local v28    # "responseString":Ljava/lang/String;
    .end local v29    # "result":Lorg/apache/cordova/filetransfer/FileUploadResult;
    .end local v30    # "sendStream":Ljava/io/OutputStream;
    .end local v31    # "stringLength":I
    .end local v33    # "tailParamsBytes":[B
    .end local v35    # "useChunkedMode":Z
    .local v12, "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "error":Lorg/json/JSONObject;
    :catchall_b
    move-exception v36

    :try_start_38
    monitor-exit v37
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_b

    throw v36

    .local v12, "e":Ljava/io/IOException;
    :catchall_c
    move-exception v36

    :try_start_39
    monitor-exit v37
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_c

    throw v36

    .end local v13    # "error":Lorg/json/JSONObject;
    .local v12, "e":Lorg/json/JSONException;
    :catchall_d
    move-exception v36

    :try_start_3a
    monitor-exit v37
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_d

    throw v36

    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v13    # "error":Lorg/json/JSONObject;
    .restart local v32    # "t":Ljava/lang/Throwable;
    :catchall_e
    move-exception v36

    :try_start_3b
    monitor-exit v37
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_e

    throw v36

    .end local v13    # "error":Lorg/json/JSONObject;
    .end local v32    # "t":Ljava/lang/Throwable;
    :catchall_f
    move-exception v36

    :try_start_3c
    monitor-exit v37
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_f

    throw v36

    .restart local v4    # "beforeData":Ljava/lang/StringBuilder;
    .restart local v5    # "beforeDataBytes":[B
    .restart local v6    # "buffer":[B
    .restart local v7    # "bufferSize":I
    .restart local v8    # "bytesAvailable":I
    .restart local v9    # "bytesRead":I
    .restart local v11    # "cookie":Ljava/lang/String;
    .restart local v16    # "inStream":Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    .restart local v21    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v22    # "prevBytesRead":J
    .restart local v24    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .restart local v26    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .restart local v27    # "responseCode":I
    .restart local v28    # "responseString":Ljava/lang/String;
    .restart local v29    # "result":Lorg/apache/cordova/filetransfer/FileUploadResult;
    .restart local v30    # "sendStream":Ljava/io/OutputStream;
    .restart local v31    # "stringLength":I
    .restart local v33    # "tailParamsBytes":[B
    .restart local v35    # "useChunkedMode":Z
    :catchall_10
    move-exception v36

    :try_start_3d
    monitor-exit v37
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_10

    throw v36
.end method
