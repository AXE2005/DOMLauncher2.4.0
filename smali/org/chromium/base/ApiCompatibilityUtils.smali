.class public Lorg/chromium/base/ApiCompatibilityUtils;
.super Ljava/lang/Object;
.source "ApiCompatibilityUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static finishAndRemoveTask(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v1, 0x15

    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 400
    :goto_0
    return-void

    .line 394
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_1

    .line 396
    new-instance v0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;

    invoke-direct {v0, p0}, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->run()V

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static getActivityNewDocumentFlag()I
    .locals 3

    .prologue
    const/high16 v2, 0x80000

    .line 441
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 444
    :cond_0
    return v2
.end method

.method public static getCreatorPackage(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 370
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 372
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFrameTime()J
    .locals 2

    .prologue
    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 284
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    .line 287
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0xa

    goto :goto_0
.end method

.method public static getLayoutDirection(Landroid/content/res/Configuration;)I
    .locals 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 2
    .param p0, "layoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method public static getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 2
    .param p0, "layoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_0
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_0
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 381
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 382
    :cond_1
    if-eqz p0, :cond_0

    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isHTMLClipboardSupported()Z
    .locals 2

    .prologue
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInteractive(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 431
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 432
    .local v0, "manager":Landroid/os/PowerManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 433
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    .line 435
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    goto :goto_0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 51
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 48
    goto :goto_0

    :cond_1
    move v0, v1

    .line 51
    goto :goto_0
.end method

.method public static isPrintingSupported()Z
    .locals 2

    .prologue
    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-static {}, Lorg/chromium/base/ApiCompatibilityUtils;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 276
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-static {}, Lorg/chromium/base/ApiCompatibilityUtils;->getFrameTime()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .prologue
    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public static setBackgroundForView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 332
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 333
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v2, 0x11

    .line 200
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v2, :cond_2

    .line 204
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 205
    .local v0, "isRtl":Z
    if-eqz v0, :cond_0

    move-object v1, p3

    :goto_0
    if-eqz v0, :cond_1

    .end local p1    # "start":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 211
    .end local v0    # "isRtl":Z
    :goto_2
    return-void

    .restart local v0    # "isRtl":Z
    .restart local p1    # "start":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v1, p1

    .line 205
    goto :goto_0

    :cond_1
    move-object p1, p3

    goto :goto_1

    .line 206
    .end local v0    # "isRtl":Z
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v2, :cond_3

    .line 207
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 209
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    const/16 v2, 0x11

    .line 237
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v2, :cond_2

    .line 239
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 240
    .local v0, "isRtl":Z
    if-eqz v0, :cond_0

    move v1, p3

    :goto_0
    if-eqz v0, :cond_1

    .end local p1    # "start":I
    :goto_1
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 247
    .end local v0    # "isRtl":Z
    :goto_2
    return-void

    .restart local v0    # "isRtl":Z
    .restart local p1    # "start":I
    :cond_0
    move v1, p1

    .line 240
    goto :goto_0

    :cond_1
    move p1, p3

    goto :goto_1

    .line 242
    .end local v0    # "isRtl":Z
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v2, :cond_3

    .line 243
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 245
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v2, 0x11

    .line 219
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v2, :cond_2

    .line 221
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 222
    .local v0, "isRtl":Z
    if-eqz v0, :cond_0

    move-object v1, p3

    :goto_0
    if-eqz v0, :cond_1

    .end local p1    # "start":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 229
    .end local v0    # "isRtl":Z
    :goto_2
    return-void

    .restart local v0    # "isRtl":Z
    .restart local p1    # "start":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v1, p1

    .line 222
    goto :goto_0

    :cond_1
    move-object p1, p3

    goto :goto_1

    .line 224
    .end local v0    # "isRtl":Z
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v2, :cond_3

    .line 225
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 227
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public static setContentDescriptionForRemoteView(Landroid/widget/RemoteViews;ILjava/lang/CharSequence;)V
    .locals 2
    .param p0, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p1, "viewId"    # I
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 297
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 301
    :cond_0
    return-void
.end method

.method public static setImageAlpha(Landroid/widget/ImageView;I)V
    .locals 2
    .param p0, "iv"    # Landroid/widget/ImageView;
    .param p1, "alpha"    # I

    .prologue
    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 358
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0
.end method

.method public static setLayoutDirection(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layoutDirection"    # I

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 90
    :cond_0
    return-void
.end method

.method public static setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 2
    .param p0, "layoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "end"    # I

    .prologue
    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method public static setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 2
    .param p0, "layoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "start"    # I

    .prologue
    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 163
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "statusBarColor"    # I

    .prologue
    const/high16 v4, -0x1000000

    const/high16 v3, -0x80000000

    .line 478
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 481
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 482
    .local v0, "window":Landroid/view/Window;
    if-ne p1, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 483
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 487
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 489
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void

    .line 485
    .restart local v0    # "window":Landroid/view/Window;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public static setTaskDescription(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "color"    # I

    .prologue
    .line 467
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 468
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 470
    .local v0, "description":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 472
    .end local v0    # "description":Landroid/app/ActivityManager$TaskDescription;
    :cond_0
    return-void
.end method

.method public static setTextAlignment(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "textAlignment"    # I

    .prologue
    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextAlignment(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public static setTextDirection(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "textDirection"    # I

    .prologue
    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextDirection(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public static shouldSkipFirstUseHints(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 452
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 453
    const-string v1, "skip_first_use_hints"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 456
    :cond_0
    return v0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 308
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static toBundle(Landroid/app/ActivityOptions;)Landroid/os/Bundle;
    .locals 2
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 319
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
