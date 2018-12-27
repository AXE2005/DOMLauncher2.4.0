.class public Lorg/chromium/ui/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;
    }
.end annotation


# static fields
.field private static final KEYBOARD_DETECT_BOTTOM_THRESHOLD_DP:F = 100.0f

.field private static final KEYBOARD_RETRY_ATTEMPTS:I = 0xa

.field private static final KEYBOARD_RETRY_DELAY_MS:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "UiUtils"

.field private static sKeyboardShowingDelegate:Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static generateScaledScreenshot(Landroid/view/View;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "currentView"    # Landroid/view/View;
    .param p1, "maximumDimension"    # I
    .param p2, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 179
    const/16 v16, 0x0

    .line 180
    .local v16, "screenshot":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    .line 182
    .local v4, "drawingCacheEnabled":Z
    const/16 v17, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/chromium/ui/UiUtils;->prepareViewHierarchyForScreenshot(Landroid/view/View;Z)V

    .line 183
    if-nez v4, :cond_0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 186
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 187
    .local v8, "originalBitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_5

    .line 188
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-double v9, v0

    .line 189
    .local v9, "originalHeight":D
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-double v11, v0

    .line 190
    .local v11, "originalWidth":D
    double-to-int v7, v11

    .line 191
    .local v7, "newWidth":I
    double-to-int v6, v9

    .line 192
    .local v6, "newHeight":I
    if-lez p1, :cond_1

    .line 193
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    div-double v13, v17, v19

    .line 194
    .local v13, "scale":D
    mul-double v17, v11, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v7, v0

    .line 195
    mul-double v17, v9, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v6, v0

    .line 197
    .end local v13    # "scale":D
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v8, v7, v6, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 199
    .local v15, "scaledScreenshot":Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_4

    .line 200
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 201
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    const/4 v15, 0x0

    .line 226
    .end local v6    # "newHeight":I
    .end local v7    # "newWidth":I
    .end local v9    # "originalHeight":D
    .end local v11    # "originalWidth":D
    .end local v15    # "scaledScreenshot":Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    if-nez v4, :cond_3

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 227
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/chromium/ui/UiUtils;->prepareViewHierarchyForScreenshot(Landroid/view/View;Z)V

    .line 229
    .end local v8    # "originalBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v16

    .line 204
    .restart local v6    # "newHeight":I
    .restart local v7    # "newWidth":I
    .restart local v8    # "originalBitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "originalHeight":D
    .restart local v11    # "originalWidth":D
    .restart local v15    # "scaledScreenshot":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v16, v15

    goto :goto_0

    .line 206
    .end local v6    # "newHeight":I
    .end local v7    # "newWidth":I
    .end local v9    # "originalHeight":D
    .end local v11    # "originalWidth":D
    .end local v15    # "scaledScreenshot":Landroid/graphics/Bitmap;
    :cond_5
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    if-lez v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    if-lez v17, :cond_2

    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-double v9, v0

    .line 208
    .restart local v9    # "originalHeight":D
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-double v11, v0

    .line 209
    .restart local v11    # "originalWidth":D
    double-to-int v7, v11

    .line 210
    .restart local v7    # "newWidth":I
    double-to-int v6, v9

    .line 211
    .restart local v6    # "newHeight":I
    if-lez p1, :cond_6

    .line 212
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    div-double v13, v17, v19

    .line 213
    .restart local v13    # "scale":D
    mul-double v17, v11, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v7, v0

    .line 214
    mul-double v17, v9, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v6, v0

    .line 216
    .end local v13    # "scale":D
    :cond_6
    move-object/from16 v0, p2

    invoke-static {v7, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 217
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 218
    .local v3, "canvas":Landroid/graphics/Canvas;
    int-to-double v0, v7

    move-wide/from16 v17, v0

    div-double v17, v17, v11

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    int-to-double v0, v6

    move-wide/from16 v18, v0

    div-double v18, v18, v9

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 220
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    move-object/from16 v16, v2

    goto :goto_0

    .line 223
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "newHeight":I
    .end local v7    # "newWidth":I
    .end local v8    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "originalHeight":D
    .end local v11    # "originalWidth":D
    :catch_0
    move-exception v5

    .line 224
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v17, "UiUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to capture screenshot and scale it down."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    if-nez v4, :cond_7

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 227
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/chromium/ui/UiUtils;->prepareViewHierarchyForScreenshot(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 226
    .end local v5    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v17

    if-nez v4, :cond_8

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 227
    :cond_8
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/chromium/ui/UiUtils;->prepareViewHierarchyForScreenshot(Landroid/view/View;Z)V

    throw v17
.end method

.method public static hideKeyboard(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 102
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    return v1
.end method

.method public static insertAfter(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)I
    .locals 1
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "existingView"    # Landroid/view/View;

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/chromium/ui/UiUtils;->insertView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method public static insertBefore(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)I
    .locals 1
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "existingView"    # Landroid/view/View;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/chromium/ui/UiUtils;->insertView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method private static insertView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)I
    .locals 2
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "existingView"    # Landroid/view/View;
    .param p3, "after"    # Z

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 154
    .local v0, "index":I
    if-ltz v0, :cond_0

    move v1, v0

    .line 163
    :goto_0
    return v1

    .line 157
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 158
    if-gez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    .line 161
    :cond_1
    if-eqz p3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 162
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move v1, v0

    .line 163
    goto :goto_0
.end method

.method public static isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 113
    sget-object v5, Lorg/chromium/ui/UiUtils;->sKeyboardShowingDelegate:Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;

    if-eqz v5, :cond_1

    sget-object v5, Lorg/chromium/ui/UiUtils;->sKeyboardShowingDelegate:Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;

    invoke-interface {v5, p0, p1}, Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;->disableKeyboardCheck(Landroid/content/Context;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v4

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 119
    .local v3, "rootView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 121
    .local v0, "appRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 124
    .local v2, "density":F
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    div-float v1, v5, v2

    .line 125
    .local v1, "bottomMarginDp":F
    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v5, v1, v5

    if-lez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static prepareViewHierarchyForScreenshot(Landroid/view/View;Z)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "takingScreenshot"    # Z

    .prologue
    .line 233
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 234
    check-cast v1, Landroid/view/ViewGroup;

    .line 235
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 236
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/chromium/ui/UiUtils;->prepareViewHierarchyForScreenshot(Landroid/view/View;Z)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "i":I
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    instance-of v2, p0, Landroid/view/SurfaceView;

    if-eqz v2, :cond_1

    .line 239
    if-nez p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 241
    :cond_1
    return-void

    .line 239
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static setKeyboardShowingDelegate(Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;)V
    .locals 0
    .param p0, "delegate"    # Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;

    .prologue
    .line 61
    sput-object p0, Lorg/chromium/ui/UiUtils;->sKeyboardShowingDelegate:Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;

    .line 62
    return-void
.end method

.method public static showKeyboard(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 70
    .local v1, "handler":Landroid/os/Handler;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 71
    .local v0, "attempt":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v2, Lorg/chromium/ui/UiUtils$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/chromium/ui/UiUtils$1;-><init>(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/os/Handler;)V

    .line 90
    .local v2, "openRunnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 91
    return-void
.end method
