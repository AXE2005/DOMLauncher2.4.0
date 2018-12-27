.class public Lorg/apache/cordova/camera/CameraLauncher;
.super Lorg/apache/cordova/CordovaPlugin;
.source "CameraLauncher.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static final ALLMEDIA:I = 0x2

.field private static final CAMERA:I = 0x1

.field private static final CROP_CAMERA:I = 0x64

.field private static final DATA_URL:I = 0x0

.field private static final FILE_URI:I = 0x1

.field private static final GET_All:Ljava/lang/String; = "Get All"

.field private static final GET_PICTURE:Ljava/lang/String; = "Get Picture"

.field private static final GET_VIDEO:Ljava/lang/String; = "Get Video"

.field private static final JPEG:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CameraLauncher"

.field private static final NATIVE_URI:I = 0x2

.field private static final PHOTOLIBRARY:I = 0x0

.field private static final PICTURE:I = 0x0

.field private static final PNG:I = 0x1

.field private static final SAVEDPHOTOALBUM:I = 0x2

.field private static final VIDEO:I = 0x1


# instance fields
.field private allowEdit:Z

.field public callbackContext:Lorg/apache/cordova/CallbackContext;

.field private conn:Landroid/media/MediaScannerConnection;

.field private correctOrientation:Z

.field private croppedUri:Landroid/net/Uri;

.field private encodingType:I

.field private imageUri:Landroid/net/Uri;

.field private mQuality:I

.field private mediaType:I

.field private numPics:I

.field private orientationCorrected:Z

.field private saveToPhotoAlbum:Z

.field private scanMe:Landroid/net/Uri;

.field private targetHeight:I

.field private targetWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method public static calculateSampleSize(IIII)I
    .locals 4
    .param p0, "srcWidth"    # I
    .param p1, "srcHeight"    # I
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I

    .prologue
    .line 951
    int-to-float v2, p0

    int-to-float v3, p1

    div-float v1, v2, v3

    .line 952
    .local v1, "srcAspect":F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float v0, v2, v3

    .line 954
    .local v0, "dstAspect":F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 955
    div-int v2, p0, p2

    .line 957
    :goto_0
    return v2

    :cond_0
    div-int v2, p1, p3

    goto :goto_0
.end method

.method private checkForDuplicateImage(I)V
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/4 v8, 0x0

    .line 1004
    const/4 v3, 0x1

    .line 1005
    .local v3, "diff":I
    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->whichContentStore()Landroid/net/Uri;

    move-result-object v0

    .line 1006
    .local v0, "contentStore":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lorg/apache/cordova/camera/CameraLauncher;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 1007
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1009
    .local v1, "currentNumOfImages":I
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    iget-boolean v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v6, :cond_0

    .line 1010
    const/4 v3, 0x2

    .line 1014
    :cond_0
    iget v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->numPics:I

    sub-int v6, v1, v6

    if-ne v6, v3, :cond_2

    .line 1015
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    .line 1016
    const-string v6, "_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1017
    .local v4, "id":I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 1018
    add-int/lit8 v4, v4, -0x1

    .line 1020
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1021
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1022
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1024
    .end local v4    # "id":I
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method private cleanup(ILandroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageType"    # I
    .param p2, "oldImage"    # Landroid/net/Uri;
    .param p3, "newImage"    # Landroid/net/Uri;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 980
    if-eqz p4, :cond_0

    .line 981
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    .line 985
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/cordova/camera/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 987
    invoke-direct {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->checkForDuplicateImage(I)V

    .line 989
    iget-boolean v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 990
    invoke-direct {p0, p3}, Lorg/apache/cordova/camera/CameraLauncher;->scanForGallery(Landroid/net/Uri;)V

    .line 993
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 994
    return-void
.end method

.method private createCaptureFile(I)Ljava/io/File;
    .locals 4
    .param p1, "encodingType"    # I

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "photo":Ljava/io/File;
    if-nez p1, :cond_0

    .line 246
    new-instance v0, Ljava/io/File;

    .end local v0    # "photo":Ljava/io/File;
    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".Pic.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .restart local v0    # "photo":Ljava/io/File;
    :goto_0
    return-object v0

    .line 247
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 248
    new-instance v0, Ljava/io/File;

    .end local v0    # "photo":Ljava/io/File;
    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".Pic.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "photo":Ljava/io/File;
    goto :goto_0

    .line 250
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid Encoding Type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getImageOrientation(Landroid/net/Uri;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 707
    const/4 v7, 0x0

    .line 708
    .local v7, "rotate":I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "orientation"

    aput-object v0, v2, v1

    .line 710
    .local v2, "cols":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 711
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 710
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 712
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 713
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 714
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 715
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v7

    .line 717
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getPicutresPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 484
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "timeStamp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMG_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "imageFileName":Ljava/lang/String;
    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 486
    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 488
    .local v2, "storageDir":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "galleryPath":Ljava/lang/String;
    return-object v0
.end method

.method private getRotatedBitmap(ILandroid/graphics/Bitmap;Lorg/apache/cordova/camera/ExifHelper;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "rotate"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "exif"    # Lorg/apache/cordova/camera/ExifHelper;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 732
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 733
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    .line 734
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 741
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 742
    invoke-virtual {p3}, Lorg/apache/cordova/camera/ExifHelper;->resetOrientation()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :goto_1
    return-object p2

    .line 736
    :cond_0
    int-to-float v0, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 826
    iget v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-gtz v6, :cond_2

    iget v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-gtz v6, :cond_2

    .line 827
    const/4 v1, 0x0

    .line 828
    .local v1, "fileStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 830
    .local v2, "image":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v6}, Lorg/apache/cordova/camera/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v1

    .line 831
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 833
    if-eqz v1, :cond_0

    .line 835
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 890
    .end local v2    # "image":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v2

    .line 832
    .restart local v2    # "image":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v6

    .line 833
    if-eqz v1, :cond_1

    .line 835
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 840
    :cond_1
    :goto_1
    throw v6

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "CameraLauncher"

    const-string v8, "Exception while closing file input stream."

    invoke-static {v7, v8}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 836
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 837
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "CameraLauncher"

    const-string v7, "Exception while closing file input stream."

    invoke-static {v6, v7}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 845
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileStream":Ljava/io/InputStream;
    .end local v2    # "image":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 846
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 847
    const/4 v1, 0x0

    .line 849
    .restart local v1    # "fileStream":Ljava/io/InputStream;
    :try_start_3
    iget-object v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v6}, Lorg/apache/cordova/camera/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v1

    .line 850
    const/4 v6, 0x0

    invoke-static {v1, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 852
    if-eqz v1, :cond_3

    .line 854
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 862
    :cond_3
    :goto_2
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v6, :cond_0

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v6, :cond_0

    .line 868
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, v6, v7}, Lorg/apache/cordova/camera/CameraLauncher;->calculateAspectRatio(II)[I

    move-result-object v5

    .line 871
    .local v5, "widthHeight":[I
    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 872
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    iget v9, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    invoke-static {v6, v7, v8, v9}, Lorg/apache/cordova/camera/CameraLauncher;->calculateSampleSize(IIII)I

    move-result v6

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 873
    const/4 v4, 0x0

    .line 875
    .local v4, "unscaledBitmap":Landroid/graphics/Bitmap;
    :try_start_5
    iget-object v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v6}, Lorg/apache/cordova/camera/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v1

    .line 876
    const/4 v6, 0x0

    invoke-static {v1, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v4

    .line 878
    if-eqz v1, :cond_4

    .line 880
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 886
    :cond_4
    :goto_3
    if-eqz v4, :cond_0

    .line 890
    aget v6, v5, v11

    aget v7, v5, v10

    invoke-static {v4, v6, v7, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 851
    .end local v4    # "unscaledBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "widthHeight":[I
    :catchall_1
    move-exception v6

    .line 852
    if-eqz v1, :cond_5

    .line 854
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 859
    :cond_5
    :goto_4
    throw v6

    .line 855
    :catch_2
    move-exception v0

    .line 856
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "CameraLauncher"

    const-string v8, "Exception while closing file input stream."

    invoke-static {v7, v8}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 855
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 856
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "CameraLauncher"

    const-string v7, "Exception while closing file input stream."

    invoke-static {v6, v7}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 877
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "unscaledBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "widthHeight":[I
    :catchall_2
    move-exception v6

    .line 878
    if-eqz v1, :cond_6

    .line 880
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 885
    :cond_6
    :goto_5
    throw v6

    .line 881
    :catch_4
    move-exception v0

    .line 882
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "CameraLauncher"

    const-string v8, "Exception while closing file input stream."

    invoke-static {v7, v8}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 881
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 882
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "CameraLauncher"

    const-string v7, "Exception while closing file input stream."

    invoke-static {v6, v7}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private getTempDirectoryPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 180
    .local v0, "cache":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    new-instance v0, Ljava/io/File;

    .end local v0    # "cache":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .restart local v0    # "cache":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 186
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private getUriFromMediaStore()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 800
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 801
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :try_start_0
    iget-object v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 814
    :goto_0
    return-object v2

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v4, "CameraLauncher"

    const-string v5, "Can\'t write to external media storage."

    invoke-static {v4, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :try_start_1
    iget-object v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 809
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 810
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v4, "CameraLauncher"

    const-string v5, "Can\'t write to internal media storage."

    invoke-static {v4, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private ouputModifiedBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/modified.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "modifiedPath":Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 505
    .local v3, "os":Ljava/io/OutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    invoke-virtual {p1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 506
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 509
    iget-object v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p2, v5}, Lorg/apache/cordova/camera/FileHelper;->getRealPath(Landroid/net/Uri;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, "realPath":Ljava/lang/String;
    new-instance v1, Lorg/apache/cordova/camera/ExifHelper;

    invoke-direct {v1}, Lorg/apache/cordova/camera/ExifHelper;-><init>()V

    .line 511
    .local v1, "exif":Lorg/apache/cordova/camera/ExifHelper;
    if-eqz v4, :cond_1

    iget v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    if-nez v5, :cond_1

    .line 513
    :try_start_0
    invoke-virtual {v1, v4}, Lorg/apache/cordova/camera/ExifHelper;->createInFile(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v1}, Lorg/apache/cordova/camera/ExifHelper;->readExifData()V

    .line 515
    iget-boolean v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->orientationCorrected:Z

    if-eqz v5, :cond_0

    .line 516
    invoke-virtual {v1}, Lorg/apache/cordova/camera/ExifHelper;->resetOrientation()V

    .line 518
    :cond_0
    invoke-virtual {v1, v2}, Lorg/apache/cordova/camera/ExifHelper;->createOutFile(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v1}, Lorg/apache/cordova/camera/ExifHelper;->writeExifData()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :cond_1
    :goto_0
    return-object v2

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private performCrop(Landroid/net/Uri;ILandroid/content/Intent;)V
    .locals 8
    .param p1, "picUri"    # Landroid/net/Uri;
    .param p2, "destType"    # I
    .param p3, "cameraIntent"    # Landroid/content/Intent;

    .prologue
    .line 319
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v1, "cropIntent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v3, "crop"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-lez v3, :cond_0

    .line 327
    const-string v3, "outputX"

    iget v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    :cond_0
    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-lez v3, :cond_1

    .line 330
    const-string v3, "outputY"

    iget v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    :cond_1
    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-lez v3, :cond_2

    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-lez v3, :cond_2

    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    iget v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-ne v3, v4, :cond_2

    .line 333
    const-string v3, "aspectX"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string v3, "aspectY"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    .line 338
    const-string v3, "output"

    iget-object v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 342
    iget-object v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz v3, :cond_3

    .line 343
    iget-object v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 344
    add-int/lit8 v4, p2, 0x64

    .line 343
    invoke-interface {v3, p0, v1, v4}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v1    # "cropIntent":Landroid/content/Intent;
    :cond_3
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v3, "CameraLauncher"

    const-string v4, "Crop operation not supported on this device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :try_start_1
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/camera/CameraLauncher;->processResultFromCamera(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 351
    :catch_1
    move-exception v2

    .line 353
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 354
    const-string v3, "CameraLauncher"

    const-string v4, "Unable to write to file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processResultFromCamera(ILandroid/content/Intent;)V
    .locals 13
    .param p1, "destType"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v5, 0x0

    .line 369
    .local v5, "rotate":I
    new-instance v2, Lorg/apache/cordova/camera/ExifHelper;

    invoke-direct {v2}, Lorg/apache/cordova/camera/ExifHelper;-><init>()V

    .line 372
    .local v2, "exif":Lorg/apache/cordova/camera/ExifHelper;
    :try_start_0
    iget-boolean v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    if-eqz v8, :cond_1

    .line 374
    iget-object v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/cordova/camera/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 382
    .local v6, "sourcePath":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/.Pic.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/apache/cordova/camera/ExifHelper;->createInFile(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v2}, Lorg/apache/cordova/camera/ExifHelper;->readExifData()V

    .line 384
    invoke-virtual {v2}, Lorg/apache/cordova/camera/ExifHelper;->getOrientation()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 390
    .end local v6    # "sourcePath":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .line 391
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 394
    .local v7, "uri":Landroid/net/Uri;
    if-nez p1, :cond_5

    .line 395
    iget-object v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    if-eqz v8, :cond_2

    .line 396
    iget-object v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/cordova/camera/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/cordova/camera/CameraLauncher;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    :goto_2
    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "data"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 408
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-nez v0, :cond_3

    .line 409
    const-string v8, "CameraLauncher"

    const-string v9, "I either have a null image path or bitmap"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v8, "Unable to create bitmap!"

    invoke-virtual {p0, v8}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    .line 480
    :goto_3
    return-void

    .line 378
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/.Pic.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .restart local v6    # "sourcePath":Ljava/lang/String;
    goto :goto_0

    .line 386
    .end local v6    # "sourcePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 400
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/cordova/camera/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/cordova/camera/CameraLauncher;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 414
    :cond_3
    if-eqz v5, :cond_4

    iget-boolean v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-eqz v8, :cond_4

    .line 415
    invoke-direct {p0, v5, v0, v2}, Lorg/apache/cordova/camera/CameraLauncher;->getRotatedBitmap(ILandroid/graphics/Bitmap;Lorg/apache/cordova/camera/ExifHelper;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 418
    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/cordova/camera/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;)V

    .line 419
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/apache/cordova/camera/CameraLauncher;->checkForDuplicateImage(I)V

    .line 478
    :goto_4
    const/4 v8, 0x1

    iget-object v9, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v8, v9, v7, v0}, Lorg/apache/cordova/camera/CameraLauncher;->cleanup(ILandroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 479
    const/4 v0, 0x0

    .line 480
    goto :goto_3

    .line 423
    :cond_5
    const/4 v8, 0x1

    if-eq p1, v8, :cond_6

    const/4 v8, 0x2

    if-ne p1, v8, :cond_d

    .line 424
    :cond_6
    new-instance v8, Ljava/io/File;

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 426
    iget-boolean v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v8, :cond_7

    .line 428
    new-instance v8, Ljava/io/File;

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getPicutresPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 433
    :goto_5
    if-nez v7, :cond_8

    .line 434
    const-string v8, "Error capturing image - no media storage found."

    invoke-virtual {p0, v8}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 430
    :cond_7
    new-instance v8, Ljava/io/File;

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_5

    .line 439
    :cond_8
    iget v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9

    iget v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9

    iget v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_9

    .line 440
    iget-boolean v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-nez v8, :cond_9

    .line 441
    invoke-direct {p0, v7}, Lorg/apache/cordova/camera/CameraLauncher;->writeUncompressedImage(Landroid/net/Uri;)V

    .line 443
    iget-object v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 445
    :cond_9
    iget-object v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/cordova/camera/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/cordova/camera/CameraLauncher;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 447
    if-eqz v5, :cond_a

    iget-boolean v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-eqz v8, :cond_a

    .line 448
    invoke-direct {p0, v5, v0, v2}, Lorg/apache/cordova/camera/CameraLauncher;->getRotatedBitmap(ILandroid/graphics/Bitmap;Lorg/apache/cordova/camera/ExifHelper;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 452
    :cond_a
    iget-object v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 453
    .local v4, "os":Ljava/io/OutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v9, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    invoke-virtual {v0, v8, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 454
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 457
    iget v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    if-nez v8, :cond_b

    .line 459
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "exifPath":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/apache/cordova/camera/ExifHelper;->createOutFile(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v2}, Lorg/apache/cordova/camera/ExifHelper;->writeExifData()V

    .line 465
    .end local v3    # "exifPath":Ljava/lang/String;
    :cond_b
    iget-boolean v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v8, :cond_c

    .line 466
    invoke-direct {p0, v7}, Lorg/apache/cordova/camera/CameraLauncher;->refreshGallery(Landroid/net/Uri;)V

    .line 471
    :cond_c
    iget-object v8, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 475
    .end local v4    # "os":Ljava/io/OutputStream;
    :cond_d
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
.end method

.method private processResultFromGallery(ILandroid/content/Intent;)V
    .locals 14
    .param p1, "destType"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 535
    .local v12, "uri":Landroid/net/Uri;
    if-nez v12, :cond_0

    .line 536
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 537
    iget-object v12, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    .line 543
    :cond_0
    const/4 v11, 0x0

    .line 547
    .local v11, "rotate":I
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    if-eqz v1, :cond_2

    .line 548
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 623
    .end local v11    # "rotate":I
    :goto_0
    return-void

    .line 539
    :cond_1
    const-string v1, "null data from photo library"

    invoke-virtual {p0, v1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 553
    .restart local v11    # "rotate":I
    :cond_2
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 554
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-nez v1, :cond_4

    .line 555
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_4
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 559
    .local v13, "uriString":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v13, v1}, Lorg/apache/cordova/camera/FileHelper;->getMimeType(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object v8

    .line 561
    .local v8, "mimeType":Ljava/lang/String;
    const-string v1, "image/jpeg"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "image/png"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 562
    const-string v1, "CameraLauncher"

    const-string v2, "I either have a null image path or bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v1, "Unable to retrieve path to picture!"

    invoke-virtual {p0, v1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_5
    const/4 v0, 0x0

    .line 568
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0, v13}, Lorg/apache/cordova/camera/CameraLauncher;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 572
    :goto_1
    if-nez v0, :cond_6

    .line 573
    const-string v1, "CameraLauncher"

    const-string v2, "I either have a null image path or bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v1, "Unable to create bitmap!"

    invoke-virtual {p0, v1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :catch_0
    move-exception v7

    .line 570
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 578
    .end local v7    # "e":Ljava/io/IOException;
    :cond_6
    iget-boolean v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-eqz v1, :cond_7

    .line 579
    invoke-direct {p0, v12}, Lorg/apache/cordova/camera/CameraLauncher;->getImageOrientation(Landroid/net/Uri;)I

    move-result v11

    .line 580
    if-eqz v11, :cond_7

    .line 581
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 582
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v1, v11

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 584
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 585
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->orientationCorrected:Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 593
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_7
    :goto_2
    if-nez p1, :cond_a

    .line 594
    invoke-virtual {p0, v0}, Lorg/apache/cordova/camera/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;)V

    .line 616
    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    .line 617
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 618
    const/4 v0, 0x0

    .line 620
    :cond_9
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 586
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    :catch_1
    move-exception v10

    .line 587
    .local v10, "oom":Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->orientationCorrected:Z

    goto :goto_2

    .line 598
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_a
    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 600
    :cond_b
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-lez v1, :cond_c

    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-gtz v1, :cond_d

    .line 601
    :cond_c
    iget-boolean v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->orientationCorrected:Z

    if-eqz v1, :cond_e

    .line 603
    :cond_d
    :try_start_2
    invoke-direct {p0, v0, v12}, Lorg/apache/cordova/camera/CameraLauncher;->ouputModifiedBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 606
    .local v9, "modifiedPath":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 607
    .end local v9    # "modifiedPath":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 608
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 609
    const-string v1, "Error retrieving image."

    invoke-virtual {p0, v1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_3

    .line 613
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_e
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p1, "contentStore"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 967
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 969
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 967
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private refreshGallery(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 494
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v0, "mediaScanIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 496
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    return-void
.end method

.method private scanForGallery(Landroid/net/Uri;)V
    .locals 2
    .param p1, "newImage"    # Landroid/net/Uri;

    .prologue
    .line 1071
    iput-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->scanMe:Landroid/net/Uri;

    .line 1072
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 1075
    :cond_0
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    .line 1076
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 1077
    return-void
.end method

.method private whichContentStore()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1031
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1034
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private writeUncompressedImage(Landroid/net/Uri;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    const/4 v2, 0x0

    .line 766
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 768
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/cordova/camera/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 769
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5

    .line 770
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 772
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 775
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    if-eqz v5, :cond_0

    .line 779
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 784
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 786
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 792
    :cond_1
    :goto_2
    return-void

    .line 773
    :cond_2
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v5, v0, v6, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 776
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    :catchall_0
    move-exception v6

    move-object v2, v3

    .line 777
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v5, :cond_3

    .line 779
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 784
    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 786
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 791
    :cond_4
    :goto_5
    throw v6

    .line 780
    :catch_0
    move-exception v1

    .line 781
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "CameraLauncher"

    const-string v8, "Exception while closing output stream."

    invoke-static {v7, v8}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 787
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 788
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "CameraLauncher"

    const-string v8, "Exception while closing file input stream."

    invoke-static {v7, v8}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 780
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    :catch_2
    move-exception v1

    .line 781
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "CameraLauncher"

    const-string v7, "Exception while closing output stream."

    invoke-static {v6, v7}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 787
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 788
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "CameraLauncher"

    const-string v7, "Exception while closing file input stream."

    invoke-static {v6, v7}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 776
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    goto :goto_3
.end method


# virtual methods
.method public calculateAspectRatio(II)[I
    .locals 11
    .param p1, "origWidth"    # I
    .param p2, "origHeight"    # I

    .prologue
    .line 901
    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    .line 902
    .local v3, "newWidth":I
    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    .line 905
    .local v0, "newHeight":I
    if-gtz v3, :cond_1

    if-gtz v0, :cond_1

    .line 906
    move v3, p1

    .line 907
    move v0, p2

    .line 934
    :cond_0
    :goto_0
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 935
    .local v6, "retval":[I
    const/4 v7, 0x0

    aput v3, v6, v7

    .line 936
    const/4 v7, 0x1

    aput v0, v6, v7

    .line 937
    return-object v6

    .line 910
    .end local v6    # "retval":[I
    :cond_1
    if-lez v3, :cond_2

    if-gtz v0, :cond_2

    .line 911
    mul-int v7, v3, p2

    div-int v0, v7, p1

    goto :goto_0

    .line 914
    :cond_2
    if-gtz v3, :cond_3

    if-lez v0, :cond_3

    .line 915
    mul-int v7, v0, p1

    div-int v3, v7, p2

    goto :goto_0

    .line 924
    :cond_3
    int-to-double v7, v3

    int-to-double v9, v0

    div-double v1, v7, v9

    .line 925
    .local v1, "newRatio":D
    int-to-double v7, p1

    int-to-double v9, p2

    div-double v4, v7, v9

    .line 927
    .local v4, "origRatio":D
    cmpl-double v7, v4, v1

    if-lez v7, :cond_4

    .line 928
    mul-int v7, v3, p2

    div-int v0, v7, p1

    goto :goto_0

    .line 929
    :cond_4
    cmpg-double v7, v4, v1

    if-gez v7, :cond_0

    .line 930
    mul-int v7, v0, p1

    div-int v3, v7, p2

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 115
    iput-object p3, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 117
    const-string v6, "takePicture"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 118
    const/4 v3, 0x1

    .line 119
    .local v3, "srcType":I
    const/4 v0, 0x1

    .line 120
    .local v0, "destType":I
    iput-boolean v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    .line 121
    iput v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    .line 122
    iput v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    .line 123
    iput v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    .line 124
    iput v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    .line 125
    const/16 v6, 0x50

    iput v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    .line 127
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    iput v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    .line 128
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 129
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 130
    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    iput v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    .line 131
    const/4 v5, 0x4

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    iput v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    .line 132
    const/4 v5, 0x5

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    iput v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    .line 133
    const/4 v5, 0x6

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    iput v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    .line 134
    const/4 v5, 0x7

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    .line 135
    const/16 v5, 0x8

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    .line 136
    const/16 v5, 0x9

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    .line 140
    iget v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-ge v5, v4, :cond_0

    .line 141
    iput v7, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    .line 143
    :cond_0
    iget v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-ge v5, v4, :cond_1

    .line 144
    iput v7, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    .line 148
    :cond_1
    if-ne v3, v4, :cond_3

    .line 149
    :try_start_0
    iget v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-virtual {p0, v0, v5}, Lorg/apache/cordova/camera/CameraLauncher;->takePicture(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_2
    :goto_0
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v5, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v5}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 164
    .local v2, "r":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v2, v4}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 165
    invoke-virtual {p3, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 169
    .end local v0    # "destType":I
    .end local v2    # "r":Lorg/apache/cordova/PluginResult;
    .end local v3    # "srcType":I
    :goto_1
    return v4

    .line 151
    .restart local v0    # "destType":I
    .restart local v3    # "srcType":I
    :cond_3
    if-eqz v3, :cond_4

    if-ne v3, v8, :cond_2

    .line 152
    :cond_4
    :try_start_1
    iget v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-virtual {p0, v3, v0, v5}, Lorg/apache/cordova/camera/CameraLauncher;->getImage(III)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Illegal Argument Exception"

    invoke-virtual {p3, v5}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 158
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v5, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v5}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 159
    .restart local v2    # "r":Lorg/apache/cordova/PluginResult;
    invoke-virtual {p3, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_1

    .end local v0    # "destType":I
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "r":Lorg/apache/cordova/PluginResult;
    .end local v3    # "srcType":I
    :cond_5
    move v4, v5

    .line 169
    goto :goto_1
.end method

.method public failPicture(Ljava/lang/String;)V
    .locals 1
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 1067
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 1068
    return-void
.end method

.method public getImage(III)V
    .locals 6
    .param p1, "srcType"    # I
    .param p2, "returnType"    # I
    .param p3, "encodingType"    # I

    .prologue
    const/4 v5, 0x1

    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "Get Picture"

    .line 270
    .local v2, "title":Ljava/lang/String;
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    .line 271
    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    if-nez v3, :cond_6

    .line 272
    const-string v3, "image/*"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iget-boolean v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    if-eqz v3, :cond_5

    .line 274
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v3, "crop"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-lez v3, :cond_0

    .line 277
    const-string v3, "outputX"

    iget v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    :cond_0
    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-lez v3, :cond_1

    .line 280
    const-string v3, "outputY"

    iget v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    :cond_1
    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-lez v3, :cond_2

    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-lez v3, :cond_2

    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    iget v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-ne v3, v4, :cond_2

    .line 283
    const-string v3, "aspectX"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v3, "aspectY"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    :cond_2
    invoke-direct {p0, p3}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(I)Ljava/io/File;

    move-result-object v1

    .line 287
    .local v1, "photo":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    .line 288
    const-string v3, "output"

    iget-object v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 306
    .end local v1    # "photo":Ljava/io/File;
    :cond_3
    :goto_0
    iget-object v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz v3, :cond_4

    .line 307
    iget-object v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 308
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 308
    add-int/lit8 v5, p1, 0x1

    mul-int/lit8 v5, v5, 0x10

    add-int/2addr v5, p2

    add-int/lit8 v5, v5, 0x1

    .line 307
    invoke-interface {v3, p0, v4, v5}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    .line 310
    :cond_4
    return-void

    .line 290
    :cond_5
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 293
    :cond_6
    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    if-ne v3, v5, :cond_7

    .line 294
    const-string v3, "video/*"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v2, "Get Video"

    .line 296
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 298
    :cond_7
    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 301
    const-string v3, "*/*"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v2, "Get All"

    .line 303
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 636
    div-int/lit8 v4, p1, 0x10

    add-int/lit8 v2, v4, -0x1

    .line 637
    .local v2, "srcType":I
    rem-int/lit8 v4, p1, 0x10

    add-int/lit8 v0, v4, -0x1

    .line 640
    .local v0, "destType":I
    const/16 v4, 0x64

    if-lt p1, v4, :cond_3

    .line 641
    if-ne p2, v5, :cond_1

    .line 645
    add-int/lit8 v0, p1, -0x64

    .line 647
    :try_start_0
    invoke-direct {p0, v0, p3}, Lorg/apache/cordova/camera/CameraLauncher;->processResultFromCamera(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 650
    const-string v4, "CameraLauncher"

    const-string v5, "Unable to write to file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 654
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    if-nez p2, :cond_2

    .line 655
    const-string v4, "Camera cancelled."

    invoke-virtual {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_2
    const-string v4, "Did not complete!"

    invoke-virtual {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_3
    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 666
    if-ne p2, v5, :cond_5

    .line 668
    :try_start_1
    iget-boolean v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    if-eqz v4, :cond_4

    .line 670
    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".Pic.jpg"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 671
    .local v3, "tmpFile":Landroid/net/Uri;
    invoke-direct {p0, v3, v0, p3}, Lorg/apache/cordova/camera/CameraLauncher;->performCrop(Landroid/net/Uri;ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 676
    .end local v3    # "tmpFile":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 677
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 678
    const-string v4, "Error capturing image."

    invoke-virtual {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_2
    invoke-direct {p0, v0, p3}, Lorg/apache/cordova/camera/CameraLauncher;->processResultFromCamera(ILandroid/content/Intent;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 683
    :cond_5
    if-nez p2, :cond_6

    .line 684
    const-string v4, "Camera cancelled."

    invoke-virtual {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_6
    const-string v4, "Did not complete!"

    invoke-virtual {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_7
    if-eqz v2, :cond_8

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 694
    :cond_8
    if-ne p2, v5, :cond_9

    if-eqz p3, :cond_9

    .line 695
    invoke-direct {p0, v0, p3}, Lorg/apache/cordova/camera/CameraLauncher;->processResultFromGallery(ILandroid/content/Intent;)V

    goto :goto_0

    .line 697
    :cond_9
    if-nez p2, :cond_a

    .line 698
    const-string v4, "Selection cancelled."

    invoke-virtual {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_a
    const-string v4, "Selection did not complete!"

    invoke-virtual {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    .line 1081
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->scanMe:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/*"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    :goto_0
    return-void

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "CameraLauncher"

    const-string v2, "Can\'t scan file in MediaScanner after taking picture"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1089
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 1090
    return-void
.end method

.method public processPicture(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1044
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1046
    .local v2, "jpeg_data":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    invoke-virtual {p1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1047
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1048
    .local v0, "code":[B
    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    .line 1049
    .local v4, "output":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 1050
    .local v3, "js_out":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v5, v3}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 1051
    const/4 v3, 0x0

    .line 1052
    const/4 v4, 0x0

    check-cast v4, [B

    .line 1053
    const/4 v5, 0x0

    check-cast v5, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    .end local v0    # "code":[B
    .end local v3    # "js_out":Ljava/lang/String;
    .end local v4    # "output":[B
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 1059
    return-void

    .line 1055
    :catch_0
    move-exception v1

    .line 1056
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Error compressing image."

    invoke-virtual {p0, v5}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public takePicture(II)V
    .locals 5
    .param p1, "returnType"    # I
    .param p2, "encodingType"    # I

    .prologue
    .line 210
    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->whichContentStore()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/camera/CameraLauncher;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->numPics:I

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, p2}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(I)Ljava/io/File;

    move-result-object v2

    .line 217
    .local v2, "photo":Ljava/io/File;
    const-string v3, "output"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Landroid/net/Uri;

    .line 220
    iget-object v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 223
    .local v1, "mPm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 226
    iget-object v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    add-int/lit8 v4, p1, 0x20

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3, p0, v0, v4}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    .line 235
    .end local v1    # "mPm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v1    # "mPm":Landroid/content/pm/PackageManager;
    :cond_1
    const-string v3, "CameraLauncher"

    const-string v4, "Error: You don\'t have a default camera.  Your device may not be CTS complaint."

    invoke-static {v3, v4}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
