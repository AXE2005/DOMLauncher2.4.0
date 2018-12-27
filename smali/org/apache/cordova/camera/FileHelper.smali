.class public Lorg/apache/cordova/camera/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileUtils"

.field private static final _DATA:Ljava/lang/String; = "_data"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;
    .locals 7
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v3, 0x0

    .line 156
    .local v3, "returnValue":Ljava/io/InputStream;
    const-string v5, "content"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 158
    .local v4, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 182
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v3

    .line 159
    :cond_1
    const-string v5, "file://"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 160
    const-string v5, "?"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 161
    .local v1, "question":I
    const/4 v5, -0x1

    if-le v1, v5, :cond_2

    .line 162
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 164
    :cond_2
    const-string v5, "file:///android_asset/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 165
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 166
    .restart local v4    # "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "relativePath":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 171
    .end local v2    # "relativePath":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_0
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 175
    :goto_1
    if-nez v3, :cond_0

    .line 176
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "returnValue":Ljava/io/InputStream;
    invoke-static {p0, p1}, Lorg/apache/cordova/camera/FileHelper;->getRealPath(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .restart local v3    # "returnValue":Ljava/io/InputStream;
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "question":I
    :cond_4
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "returnValue":Ljava/io/InputStream;
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .restart local v3    # "returnValue":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;
    .locals 3
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 223
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "content://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 226
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/cordova/camera/FileHelper;->getMimeTypeForExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMimeTypeForExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 200
    move-object v0, p0

    .line 201
    .local v0, "extension":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 202
    .local v1, "lastDot":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 203
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string v2, "3ga"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    const-string v2, "audio/3gpp"

    .line 210
    :goto_0
    return-object v2

    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getRealPath(Landroid/net/Uri;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "realPath":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 54
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/apache/cordova/camera/FileHelper;->getRealPathFromURI_BelowAPI11(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 57
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 58
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/apache/cordova/camera/FileHelper;->getRealPathFromURI_API11to18(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/apache/cordova/camera/FileHelper;->getRealPathFromURI_API19(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRealPath(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;

    .prologue
    .line 76
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/cordova/camera/FileHelper;->getRealPath(Landroid/net/Uri;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRealPathFromURI_API11to18(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v3, v1

    .line 112
    .local v3, "proj":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 115
    .local v10, "result":Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/content/CursorLoader;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v0, "cursorLoader":Landroid/content/CursorLoader;
    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v8

    .line 118
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 119
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 120
    .local v7, "column_index":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 126
    .end local v0    # "cursorLoader":Landroid/content/CursorLoader;
    .end local v7    # "column_index":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v10

    .line 123
    :catch_0
    move-exception v9

    .line 124
    .local v9, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static getRealPathFromURI_API19(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 81
    const-string v9, ""

    .line 83
    .local v9, "filePath":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 86
    .local v11, "wholeID":Ljava/lang/String;
    const-string v0, ":"

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_1

    const-string v0, ":"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v10, v0, v1

    .line 89
    .local v10, "id":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 92
    .local v2, "column":[Ljava/lang/String;
    const-string v3, "_id=?"

    .line 94
    .local v3, "sel":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 95
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x0

    .line 94
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 97
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 99
    .local v6, "columnIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 102
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 106
    .end local v2    # "column":[Ljava/lang/String;
    .end local v3    # "sel":Ljava/lang/String;
    .end local v6    # "columnIndex":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "wholeID":Ljava/lang/String;
    :goto_1
    return-object v9

    .line 86
    .restart local v11    # "wholeID":Ljava/lang/String;
    :cond_1
    const-string v0, ";"

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_2

    .line 87
    const-string v0, ";"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v10, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object v10, v11

    goto :goto_0

    .line 103
    .end local v11    # "wholeID":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 104
    .local v8, "e":Ljava/lang/Exception;
    const-string v9, ""

    goto :goto_1
.end method

.method public static getRealPathFromURI_BelowAPI11(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 130
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 131
    .local v2, "proj":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 134
    .local v9, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 135
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 136
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 137
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 142
    .end local v6    # "column_index":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v9

    .line 139
    :catch_0
    move-exception v8

    .line 140
    .local v8, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 196
    :cond_0
    return-object p0
.end method
