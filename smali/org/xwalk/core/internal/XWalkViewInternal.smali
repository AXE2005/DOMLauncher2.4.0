.class public Lorg/xwalk/core/internal/XWalkViewInternal;
.super Landroid/widget/FrameLayout;
.source "XWalkViewInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;
    }
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createExternally = true
    extendClass = Landroid/widget/FrameLayout;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INPUT_FILE_REQUEST_CODE:I = 0x1

.field static final PLAYSTORE_DETAIL_URI:Ljava/lang/String; = "market://details?id="

.field public static final RELOAD_IGNORE_CACHE:I = 0x1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final RELOAD_NORMAL:I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

.field private mCameraPhotoPath:Ljava/lang/String;

.field private mContent:Lorg/xwalk/core/internal/XWalkContent;

.field private mContext:Landroid/content/Context;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHidden:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const-class v0, Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkViewInternal;->$assertionsDisabled:Z

    .line 157
    const-class v0, Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/xwalk/core/internal/XWalkViewInternal;->TAG:Ljava/lang/String;

    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        postWrapperLines = {
            "        if (bridge == null) return;",
            "        addView((FrameLayout)bridge, new FrameLayout.LayoutParams(",
            "                FrameLayout.LayoutParams.MATCH_PARENT,",
            "                FrameLayout.LayoutParams.MATCH_PARENT));"
        }
        preWrapperLines = {
            "        super(${param1}, null);"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-static {p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->convertContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 219
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 221
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    .line 222
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    .line 223
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        postWrapperLines = {
            "        if (bridge == null) return;",
            "        addView((FrameLayout)bridge, new FrameLayout.LayoutParams(",
            "                FrameLayout.LayoutParams.MATCH_PARENT,",
            "                FrameLayout.LayoutParams.MATCH_PARENT));"
        }
        preWrapperLines = {
            "        super(${param1}, ${param2});"
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->convertContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 197
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    .line 198
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    .line 199
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/app/Activity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->onActivityStateChange(Landroid/app/Activity;I)V

    return-void
.end method

.method private static checkThreadSafety()V
    .locals 3

    .prologue
    .line 920
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 921
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: A XWalkViewInternal method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "All XWalkViewInternal methods must be called on the UI thread. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 925
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 927
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private static convertContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    move-object v1, p0

    .line 228
    .local v1, "ret":Landroid/content/Context;
    invoke-static {}, Lorg/xwalk/core/internal/ReflectionHelper;->getBridgeContext()Landroid/content/Context;

    move-result-object v0

    .line 229
    .local v0, "bridgeContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    :cond_0
    move-object v1, p0

    .line 236
    :goto_0
    return-object v1

    .line 234
    :cond_1
    new-instance v1, Lorg/xwalk/core/internal/MixedContext;

    .end local v1    # "ret":Landroid/content/Context;
    invoke-direct {v1, v0, p0}, Lorg/xwalk/core/internal/MixedContext;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .restart local v1    # "ret":Landroid/content/Context;
    goto :goto_0
.end method

.method private createImageFile()Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1093
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1094
    .local v3, "timeStamp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JPEG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1095
    .local v1, "imageFileName":Ljava/lang/String;
    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1097
    .local v2, "storageDir":Ljava/io/File;
    const-string v4, ".jpg"

    invoke-static {v1, v4, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1102
    .local v0, "imageFile":Ljava/io/File;
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 272
    invoke-static {p1}, Lorg/xwalk/core/internal/XWalkInternalResources;->resetIds(Landroid/content/Context;)V

    .line 276
    :try_start_0
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkViewDelegate;->init(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 277
    new-instance v8, Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    invoke-direct {v8, p0, p0}, Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v8, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    .line 278
    iget-object v8, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->initXWalkContent(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 352
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/Throwable;
    move-object v4, v2

    .line 284
    .local v4, "linkError":Ljava/lang/Throwable;
    :goto_1
    if-nez v4, :cond_0

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 285
    :cond_0
    instance-of v8, v4, Ljava/lang/UnsatisfiedLinkError;

    if-eqz v8, :cond_1

    move-object v3, v4

    .line 292
    check-cast v3, Ljava/lang/UnsatisfiedLinkError;

    .line 293
    .local v3, "err":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 294
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, "packageName":Ljava/lang/String;
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewDelegate;->isRunningOnIA()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v6, "Intel"

    .line 296
    .local v6, "missingArch":Ljava/lang/String;
    :goto_2
    sget v8, Lorg/xwalk/core/internal/R$string;->cpu_arch_mismatch_message:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "message":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v8, Lorg/xwalk/core/internal/R$string;->cpu_arch_mismatch_title:I

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lorg/xwalk/core/internal/XWalkViewInternal$3;

    invoke-direct {v9, p0, v0}, Lorg/xwalk/core/internal/XWalkViewInternal$3;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/app/Activity;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lorg/xwalk/core/internal/R$string;->goto_store_button_label:I

    new-instance v10, Lorg/xwalk/core/internal/XWalkViewInternal$2;

    invoke-direct {v10, p0, v0, v7}, Lorg/xwalk/core/internal/XWalkViewInternal$2;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lorg/xwalk/core/internal/R$string;->report_feedback_button_label:I

    new-instance v10, Lorg/xwalk/core/internal/XWalkViewInternal$1;

    invoke-direct {v10, p0, v7, v3, v0}, Lorg/xwalk/core/internal/XWalkViewInternal$1;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/UnsatisfiedLinkError;Landroid/app/Activity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 347
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 286
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "err":Ljava/lang/UnsatisfiedLinkError;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "missingArch":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 288
    :cond_2
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 290
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_1

    .line 295
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v3    # "err":Ljava/lang/UnsatisfiedLinkError;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_4
    const-string v6, "ARM"

    goto :goto_2
.end method

.method private initXWalkContent(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 355
    iput-boolean v5, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    .line 356
    new-instance v2, Lorg/xwalk/core/internal/XWalkContent;

    invoke-direct {v2, p1, p2, p0}, Lorg/xwalk/core/internal/XWalkContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    .line 357
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkViewInternal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    new-instance v2, Lorg/xwalk/core/internal/XWalkClient;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkClient;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V

    .line 367
    new-instance v2, Lorg/xwalk/core/internal/XWalkWebChromeClient;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkWebChromeClient;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V

    .line 371
    new-instance v2, Lorg/xwalk/core/internal/XWalkUIClientInternal;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkUIClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    .line 372
    new-instance v2, Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    .line 374
    new-instance v2, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;

    invoke-direct {v2, p1}, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setDownloadListener(Lorg/xwalk/core/internal/DownloadListener;)V

    .line 375
    new-instance v2, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;

    invoke-direct {v2, p1}, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V

    .line 376
    new-instance v2, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;

    invoke-direct {v2, p1, p0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;-><init>(Landroid/content/Context;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V

    .line 378
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string v3, "disable-xwalk-extensions"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 379
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/xwalk/core/internal/extension/BuiltinXWalkExtensions;->load(Landroid/content/Context;Landroid/app/Activity;)V

    .line 384
    :goto_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkPathHelper;->initialize()V

    .line 385
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xwalk/core/internal/XWalkPathHelper;->setCacheDirectory(Ljava/lang/String;)V

    .line 388
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    :cond_0
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 392
    .local v0, "extCacheDir":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xwalk/core/internal/XWalkPathHelper;->setExternalCacheDirectory(Ljava/lang/String;)V

    .line 396
    .end local v0    # "extCacheDir":Ljava/io/File;
    :cond_1
    return-void

    .line 381
    .end local v1    # "state":Ljava/lang/String;
    :cond_2
    const-string v2, "enable-extensions"

    invoke-static {v2, v5}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->setValue(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newState"    # I

    .prologue
    .line 1012
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkViewInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1013
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1032
    :goto_0
    return-void

    .line 1015
    :pswitch_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onShow()V

    goto :goto_0

    .line 1018
    :pswitch_1
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->pauseTimers()V

    goto :goto_0

    .line 1021
    :pswitch_2
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->resumeTimers()V

    goto :goto_0

    .line 1024
    :pswitch_3
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onDestroy()V

    goto :goto_0

    .line 1027
    :pswitch_4
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onHide()V

    goto :goto_0

    .line 1013
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 525
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method canGoBack()Z
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 878
    :goto_0
    return v0

    .line 877
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 878
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method canGoForward()Z
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 890
    :goto_0
    return v0

    .line 889
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 890
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->canGoForward()Z

    move-result v0

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 549
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 551
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->clearCache(Z)V

    goto :goto_0
.end method

.method clearHistory()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 903
    :goto_0
    return-void

    .line 901
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 902
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->clearHistory()V

    goto :goto_0
.end method

.method public completeWindowCreation(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 2
    .param p1, "newXWalkView"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 266
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/xwalk/core/internal/XWalkContent;->supplyContentsForPopup(Lorg/xwalk/core/internal/XWalkContent;)V

    .line 267
    return-void

    .line 266
    :cond_0
    iget-object v0, p1, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    goto :goto_0
.end method

.method destroy()V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 911
    :goto_0
    return-void

    .line 907
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 908
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    .line 909
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->destroy()V

    .line 910
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->disableRemoteDebugging()V

    goto :goto_0
.end method

.method disableRemoteDebugging()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 917
    :goto_0
    return-void

    .line 915
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 916
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->disableRemoteDebugging()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 995
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1000
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->hasEnteredFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->leaveFullscreen()V

    .line 1008
    :goto_0
    return v0

    .line 1003
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1004
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->goBack()V

    goto :goto_0

    .line 1008
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableRemoteDebugging()V
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 848
    :goto_0
    return-void

    .line 846
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 847
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->enableRemoteDebugging()V

    goto :goto_0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 536
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 537
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 538
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 739
    const-string v0, "4.1"

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    .line 254
    :goto_0
    return-object v0

    .line 248
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 253
    :cond_1
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkViewInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 254
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentID()I
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 872
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getRoutingID()I

    move-result v0

    goto :goto_0
.end method

.method public getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 510
    :goto_0
    return-object v0

    .line 509
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 510
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 497
    :goto_0
    return-object v0

    .line 496
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 497
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteDebuggingUrl()Landroid/net/Uri;
    .locals 3
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 858
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v2, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-object v1

    .line 859
    :cond_1
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 860
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/XWalkContent;->getRemoteDebuggingUrl()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "wsUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 863
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getSettings()Lorg/xwalk/core/internal/XWalkSettings;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 824
    :goto_0
    return-object v0

    .line 823
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 824
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getSettings()Lorg/xwalk/core/internal/XWalkSettings;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 485
    :goto_0
    return-object v0

    .line 484
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 485
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 472
    :goto_0
    return-object v0

    .line 471
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 472
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getXWalkContentForTest()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getContentViewCoreForTest()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    return-object v0
.end method

.method public getXWalkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 750
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 751
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getXWalkVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method goBack()V
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 885
    :goto_0
    return-void

    .line 883
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 884
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->goBack()V

    goto :goto_0
.end method

.method goForward()V
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 897
    :goto_0
    return-void

    .line 895
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 896
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->goForward()V

    goto :goto_0
.end method

.method public hasEnteredFullscreen()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 563
    :goto_0
    return v0

    .line 562
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 563
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->hasEnteredFullscreen()Z

    move-result v0

    goto :goto_0
.end method

.method isOwnerActivityRunning()Z
    .locals 2

    .prologue
    .line 930
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v0

    .line 931
    .local v0, "status":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 932
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public leaveFullscreen()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 575
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->exitFullscreen()V

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 417
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 436
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method navigateTo(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 936
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 938
    :goto_0
    return-void

    .line 937
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->navigateTo(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 665
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v2, :cond_0

    .line 689
    :goto_0
    return-void

    .line 666
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_3

    .line 667
    const/4 v1, 0x0

    .line 670
    .local v1, "results":Landroid/net/Uri;
    const/4 v2, -0x1

    if-ne v2, p2, :cond_1

    .line 671
    if-nez p3, :cond_2

    .line 673
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 674
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 684
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 685
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mFilePathCallback:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 677
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 679
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 688
    .end local v0    # "dataString":Ljava/lang/String;
    .end local v1    # "results":Landroid/net/Uri;
    :cond_3
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v2, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContent;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 650
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->destroy()V

    .line 651
    return-void
.end method

.method public onHide()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 622
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    if-eqz v0, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->onPause()V

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 701
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 702
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->onNewIntent(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onShow()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    if-nez v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->onResume()V

    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    goto :goto_0
.end method

.method public pauseTimers()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 593
    :goto_0
    return-void

    .line 591
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 592
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->pauseTimers()V

    goto :goto_0
.end method

.method public reload(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 448
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->reload(I)V

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 726
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v1, :cond_1

    .line 728
    :cond_0
    :goto_0
    return v0

    .line 727
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->restoreState(Landroid/os/Bundle;)Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 609
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->resumeTimers()V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 715
    :goto_0
    return v0

    .line 714
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->saveState(Landroid/os/Bundle;)Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    .line 715
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 786
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 789
    :goto_0
    return-void

    .line 787
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 788
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setDownloadListener(Lorg/xwalk/core/internal/DownloadListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/internal/DownloadListener;

    .prologue
    .line 967
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 970
    :goto_0
    return-void

    .line 968
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 969
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setDownloadListener(Lorg/xwalk/core/internal/DownloadListener;)V

    goto :goto_0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 2
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 797
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 798
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 802
    :goto_0
    return-void

    .line 800
    :cond_0
    sget-object v0, Lorg/xwalk/core/internal/XWalkViewInternal;->TAG:Ljava/lang/String;

    const-string v1, "LAYER_TYPE_SOFTWARE is not supported by XwalkView"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xwalk/core/internal/XWalkNavigationHandler;

    .prologue
    .line 976
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 979
    :goto_0
    return-void

    .line 977
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 978
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V

    goto :goto_0
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "networkUp"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 838
    :goto_0
    return-void

    .line 836
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 837
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setNetworkAvailable(Z)V

    goto :goto_0
.end method

.method public setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V
    .locals 1
    .param p1, "service"    # Lorg/xwalk/core/internal/XWalkNotificationService;

    .prologue
    .line 985
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 988
    :goto_0
    return-void

    .line 986
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 987
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V

    goto :goto_0
.end method

.method setOverlayVideoMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 941
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setOverlayVideoMode(Z)V

    .line 942
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 775
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 777
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    goto :goto_0
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 762
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 765
    :goto_0
    return-void

    .line 763
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 764
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    goto :goto_0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 811
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getSettings()Lorg/xwalk/core/internal/XWalkSettings;

    move-result-object v0

    .line 812
    .local v0, "settings":Lorg/xwalk/core/internal/XWalkSettings;
    if-nez v0, :cond_0

    .line 815
    :goto_0
    return-void

    .line 813
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 814
    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkClient;

    .prologue
    .line 949
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 952
    :goto_0
    return-void

    .line 950
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 951
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V

    goto :goto_0
.end method

.method public setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkWebChromeClient;

    .prologue
    .line 958
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 961
    :goto_0
    return-void

    .line 959
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 960
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V

    goto :goto_0
.end method

.method public showFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v10, 0x1

    .line 1046
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 1048
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v7, "takePictureIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1051
    const/4 v5, 0x0

    .line 1053
    .local v5, "photoFile":Ljava/io/File;
    :try_start_0
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->createImageFile()Ljava/io/File;

    move-result-object v5

    .line 1054
    const-string v8, "PhotoPath"

    iget-object v9, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :goto_0
    if-eqz v5, :cond_1

    .line 1062
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    .line 1063
    const-string v8, "output"

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1070
    .end local v5    # "photoFile":Ljava/io/File;
    :cond_0
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v2, "contentSelectionIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    const-string v8, "*/*"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v0, "camcorder":Landroid/content/Intent;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v6, "soundRecorder":Landroid/content/Intent;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    .local v4, "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.CHOOSER"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v1, "chooserIntent":Landroid/content/Intent;
    const-string v8, "android.intent.extra.INTENT"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1084
    const-string v8, "android.intent.extra.TITLE"

    const-string v9, "Choose an action"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    const-string v9, "android.intent.extra.INITIAL_INTENTS"

    const/4 v8, 0x0

    new-array v8, v8, [Landroid/content/Intent;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/os/Parcelable;

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1087
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v1, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1088
    return v10

    .line 1055
    .end local v0    # "camcorder":Landroid/content/Intent;
    .end local v1    # "chooserIntent":Landroid/content/Intent;
    .end local v2    # "contentSelectionIntent":Landroid/content/Intent;
    .end local v4    # "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v6    # "soundRecorder":Landroid/content/Intent;
    .restart local v5    # "photoFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 1057
    .local v3, "ex":Ljava/io/IOException;
    sget-object v8, Lorg/xwalk/core/internal/XWalkViewInternal;->TAG:Ljava/lang/String;

    const-string v9, "Unable to create Image File"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1066
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public stopLoading()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 459
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->stopLoading()V

    goto :goto_0
.end method
