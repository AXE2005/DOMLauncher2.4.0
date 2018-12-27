.class Lorg/chromium/base/library_loader/LibraryLoaderHelper;
.super Ljava/lang/Object;
.source "LibraryLoaderHelper.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field static final LOAD_FROM_APK_FALLBACK_DIR:Ljava/lang/String; = "fallback"

.field private static final TAG:Ljava/lang/String; = "LibraryLoaderHelper"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->deleteLibrariesSynchronously(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static buildFallbackLibrary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "library"    # Ljava/lang/String;

    .prologue
    .line 100
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "libName":Ljava/lang/String;
    const-string v7, "fallback"

    invoke-static {p0, v7}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->getLibDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 102
    .local v3, "fallbackLibDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .local v4, "fallbackLibFile":Ljava/io/File;
    invoke-static {v5}, Lorg/chromium/base/library_loader/Linker;->getLibraryFilePathInZipFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "pathInZipFile":Ljava/lang/String;
    invoke-static {v6, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 106
    .local v0, "dstFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-static {v3, v7}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->deleteObsoleteLibraries(Ljava/io/File;Ljava/util/Collection;)V

    .line 107
    invoke-static {p0, v0}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->unpackLibraries(Landroid/content/Context;Ljava/util/Map;)V

    .line 109
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 110
    .end local v0    # "dstFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .end local v3    # "fallbackLibDir":Ljava/io/File;
    .end local v4    # "fallbackLibFile":Ljava/io/File;
    .end local v5    # "libName":Ljava/lang/String;
    .end local v6    # "pathInZipFile":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load fallback for library "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v7, "LibraryLoaderHelper"

    invoke-static {v7, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v7, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 111
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private static close(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 4
    .param p0, "closeable"    # Ljava/io/Closeable;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 311
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "LibraryLoaderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO exception when closing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static closeZipFile(Ljava/util/zip/ZipFile;)V
    .locals 3
    .param p0, "file"    # Ljava/util/zip/ZipFile;

    .prologue
    .line 323
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "LibraryLoaderHelper"

    const-string v2, "IO exception when closing zip file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static delete(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 332
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "LibraryLoaderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    const-string v0, "LibraryLoaderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static deleteLibrariesAsynchronously(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Lorg/chromium/base/library_loader/LibraryLoaderHelper$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/base/library_loader/LibraryLoaderHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoaderHelper$1;->start()V

    .line 87
    return-void
.end method

.method private static deleteLibrariesSynchronously(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->getLibDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 71
    .local v0, "libDir":Ljava/io/File;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->deleteObsoleteLibraries(Ljava/io/File;Ljava/util/Collection;)V

    .line 72
    return-void
.end method

.method private static deleteObsoleteLibraries(Ljava/io/File;Ljava/util/Collection;)V
    .locals 11
    .param p0, "libDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "keptFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    :try_start_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 123
    .local v6, "keptFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 124
    .local v5, "k":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "k":Ljava/io/File;
    .end local v6    # "keptFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "LibraryLoaderHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to remove obsolete libraries from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 128
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "keptFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    const-string v8, "LibraryLoaderHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting obsolete libraries in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 130
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_3

    .line 131
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v7, :cond_4

    aget-object v2, v0, v4

    .line 132
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 133
    invoke-static {v2}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->delete(Ljava/io/File;)V

    .line 131
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 137
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v7    # "len$":I
    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    const-string v8, "LibraryLoaderHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to list files in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 142
    invoke-static {p0}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->delete(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static getLibDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static needToUnpackLibrary(Ljava/io/File;Ljava/util/zip/ZipEntry;Ljava/io/File;)Z
    .locals 12
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "packedLib"    # Ljava/util/zip/ZipEntry;
    .param p2, "dstFile"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x1

    .line 190
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 191
    const-string v9, "LibraryLoaderHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not exist yet"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return v8

    .line 196
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 197
    .local v6, "zipTime":J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 198
    .local v2, "fallbackLibTime":J
    cmp-long v9, v6, v2

    if-lez v9, :cond_1

    .line 199
    const-string v9, "LibraryLoaderHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not using existing fallback file because the APK file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (timestamp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") is newer than "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "the fallback library "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(timestamp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    .line 209
    .local v4, "packedLibSize":J
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 210
    .local v0, "fallbackLibSize":J
    cmp-long v9, v0, v4

    if-eqz v9, :cond_2

    .line 211
    const-string v9, "LibraryLoaderHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not using existing fallback file because the library in the APK "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "B) has a different size than "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "the fallback library "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "B)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 219
    :cond_2
    const-string v8, "LibraryLoaderHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reusing existing file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private static openZipFile(Ljava/io/File;)Ljava/util/zip/ZipFile;
    .locals 4
    .param p0, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/UnpackingException;
        }
    .end annotation

    .prologue
    .line 178
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/util/zip/ZipException;
    new-instance v1, Lorg/chromium/base/library_loader/UnpackingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open zip file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/base/library_loader/UnpackingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    .end local v0    # "e":Ljava/util/zip/ZipException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/chromium/base/library_loader/UnpackingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open zip file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/base/library_loader/UnpackingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static setLibraryFilePermissions(Ljava/io/File;)V
    .locals 5
    .param p0, "libFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 296
    const-string v0, "LibraryLoaderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting file permissions for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const-string v0, "LibraryLoaderHelper"

    const-string v1, "failed to chmod a+r the temporary file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    invoke-virtual {p0, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    const-string v0, "LibraryLoaderHelper"

    const-string v1, "failed to chmod a+x the temporary file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_1
    invoke-virtual {p0, v3}, Ljava/io/File;->setWritable(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    const-string v0, "LibraryLoaderHelper"

    const-string v1, "failed to chmod +w the temporary file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2
    return-void
.end method

.method private static unpackLibraries(Landroid/content/Context;Ljava/util/Map;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/UnpackingException;
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "dstFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v7, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 153
    .local v7, "zipFilePath":Ljava/lang/String;
    const-string v8, "LibraryLoaderHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Opening zip file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v6, "zipFile":Ljava/io/File;
    invoke-static {v6}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->openZipFile(Ljava/io/File;)Ljava/util/zip/ZipFile;

    move-result-object v5

    .line 158
    .local v5, "zipArchive":Ljava/util/zip/ZipFile;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 159
    .local v0, "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 160
    .local v4, "pathInZipFile":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 161
    .local v1, "dstFile":Ljava/io/File;
    const-string v8, "LibraryLoaderHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unpacking "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 165
    .local v3, "packedLib":Ljava/util/zip/ZipEntry;
    invoke-static {v6, v3, v1}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->needToUnpackLibrary(Ljava/io/File;Ljava/util/zip/ZipEntry;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 166
    invoke-static {v5, v3, v1}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->unpackLibraryFromZipFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V

    .line 167
    invoke-static {v1}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->setLibraryFilePermissions(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 171
    .end local v0    # "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    .end local v1    # "dstFile":Ljava/io/File;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packedLib":Ljava/util/zip/ZipEntry;
    .end local v4    # "pathInZipFile":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-static {v5}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->closeZipFile(Ljava/util/zip/ZipFile;)V

    throw v8

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-static {v5}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->closeZipFile(Ljava/util/zip/ZipFile;)V

    .line 173
    return-void
.end method

.method private static unpackLibraryFromZipFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V
    .locals 8
    .param p0, "zipArchive"    # Ljava/util/zip/ZipFile;
    .param p1, "packedLib"    # Ljava/util/zip/ZipEntry;
    .param p2, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/UnpackingException;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 238
    .local v2, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    const-string v5, "LibraryLoaderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting existing unpacked library file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 241
    new-instance v5, Lorg/chromium/base/library_loader/UnpackingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete existing unpacked library file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/chromium/base/library_loader/UnpackingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :catchall_0
    move-exception v5

    const-string v6, "input stream"

    invoke-static {v2, v6}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->close(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v5

    .line 230
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lorg/chromium/base/library_loader/UnpackingException;

    const-string v6, "IO exception when locating library in the zip file"

    invoke-direct {v5, v6, v1}, Lorg/chromium/base/library_loader/UnpackingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 249
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    :goto_0
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 257
    new-instance v5, Lorg/chromium/base/library_loader/UnpackingException;

    const-string v6, "existing unpacked library file was not deleted"

    invoke-direct {v5, v6}, Lorg/chromium/base/library_loader/UnpackingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    :catch_1
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_4
    new-instance v5, Lorg/chromium/base/library_loader/UnpackingException;

    const-string v6, "failed to create unpacked library file"

    invoke-direct {v5, v6, v1}, Lorg/chromium/base/library_loader/UnpackingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 250
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "LibraryLoaderHelper"

    const-string v6, "Failed to make library folder"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 266
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_5
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 275
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_6
    const-string v5, "LibraryLoaderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/16 v5, 0x4000

    new-array v0, v5, [B

    .line 279
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 280
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 282
    .end local v0    # "buffer":[B
    .end local v3    # "len":I
    :catch_3
    move-exception v1

    .line 283
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    new-instance v5, Lorg/chromium/base/library_loader/UnpackingException;

    const-string v6, "failed to copy the library from the zip file"

    invoke-direct {v5, v6, v1}, Lorg/chromium/base/library_loader/UnpackingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 286
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    :try_start_8
    const-string v6, "output stream"

    invoke-static {v4, v6}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->close(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v5

    .line 267
    .end local v4    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    .line 268
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Lorg/chromium/base/library_loader/UnpackingException;

    const-string v6, "failed to open output stream for unpacked library file"

    invoke-direct {v5, v6, v1}, Lorg/chromium/base/library_loader/UnpackingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 286
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buffer":[B
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/OutputStream;
    :cond_2
    const-string v5, "output stream"

    invoke-static {v4, v5}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->close(Ljava/io/Closeable;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 289
    const-string v5, "input stream"

    invoke-static {v2, v5}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->close(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 291
    return-void
.end method
