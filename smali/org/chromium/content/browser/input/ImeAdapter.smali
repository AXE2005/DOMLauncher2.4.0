.class public Lorg/chromium/content/browser/input/ImeAdapter;
.super Ljava/lang/Object;
.source "ImeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;,
        Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field private static final COMPOSITION_KEY_CODE:I = 0xe5

.field private static final INPUT_DISMISS_DELAY:I = 0x96

.field static sKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field static sSingleCharArray:[C


# instance fields
.field private final mDismissInputRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

.field private mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

.field mIsShowWithoutHideOutstanding:Z
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field private mLastComposeText:Ljava/lang/String;

.field mLastSyntheticKeyCode:I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field private mNativeImeAdapterAndroid:J

.field private mTextInputFlags:I

.field private mTextInputType:I

.field private final mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lorg/chromium/content/browser/input/ImeAdapter;->sSingleCharArray:[C

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;)V
    .locals 1
    .param p1, "wrapper"    # Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .param p2, "embedder"    # Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lorg/chromium/content/browser/input/ImeAdapter$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ImeAdapter$1;-><init>(Lorg/chromium/content/browser/input/ImeAdapter;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInputRunnable:Ljava/lang/Runnable;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsShowWithoutHideOutstanding:Z

    .line 125
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 126
    iput-object p2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mHandler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/ImeAdapter;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ImeAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->dismissInput(Z)V

    return-void
.end method

.method private static androidKeyEventForCharacter(C)Landroid/view/KeyEvent;
    .locals 5
    .param p0, "chr"    # C

    .prologue
    const/4 v2, 0x0

    .line 334
    sget-object v3, Lorg/chromium/content/browser/input/ImeAdapter;->sKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v3, :cond_0

    .line 335
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    sput-object v3, Lorg/chromium/content/browser/input/ImeAdapter;->sKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 337
    :cond_0
    sget-object v3, Lorg/chromium/content/browser/input/ImeAdapter;->sSingleCharArray:[C

    const/4 v4, 0x0

    aput-char p0, v3, v4

    .line 339
    sget-object v3, Lorg/chromium/content/browser/input/ImeAdapter;->sKeyCharacterMap:Landroid/view/KeyCharacterMap;

    sget-object v4, Lorg/chromium/content/browser/input/ImeAdapter;->sSingleCharArray:[C

    invoke-virtual {v3, v4}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 340
    .local v0, "events":[Landroid/view/KeyEvent;
    if-nez v0, :cond_2

    .line 351
    :cond_1
    :goto_0
    return-object v2

    .line 344
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 345
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 347
    aget-object v2, v0, v1

    goto :goto_0

    .line 344
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private attach(JIIZ)V
    .locals 4
    .param p1, "nativeImeAdapter"    # J
    .param p3, "textInputType"    # I
    .param p4, "textInputFlags"    # I
    .param p5, "delayDismissInput"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 238
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 239
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeResetImeAdapter(J)V

    .line 241
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 242
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAttachImeAdapter(J)V

    .line 244
    :cond_1
    iput-wide p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    .line 246
    iput p4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputFlags:I

    .line 247
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-ne p3, v0, :cond_3

    .line 261
    :cond_2
    :goto_0
    return-void

    .line 248
    :cond_3
    iput p3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    .line 249
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInputRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-nez v0, :cond_2

    .line 251
    if-eqz p5, :cond_4

    .line 254
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInputRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsShowWithoutHideOutstanding:Z

    goto :goto_0

    .line 258
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->dismissInput(Z)V

    goto :goto_0
.end method

.method private cancelComposition()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->restartInput()V

    .line 635
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    .line 636
    return-void
.end method

.method private dismissInput(Z)V
    .locals 5
    .param p1, "unzoomIfNeeded"    # Z

    .prologue
    const/4 v4, 0x0

    .line 283
    iput-boolean v4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsShowWithoutHideOutstanding:Z

    .line 284
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v3, v4, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 289
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onDismissInput()V

    .line 290
    return-void

    .line 286
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private focusedNodeChanged(Z)V
    .locals 1
    .param p1, "isEditable"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->restartInput()V

    .line 611
    :cond_0
    return-void
.end method

.method private static getModifiers(I)I
    .locals 2
    .param p0, "metaState"    # I

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "modifiers":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 187
    or-int/lit8 v0, v0, 0x1

    .line 189
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 190
    or-int/lit8 v0, v0, 0x4

    .line 192
    :cond_1
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_2

    .line 193
    or-int/lit8 v0, v0, 0x2

    .line 195
    :cond_2
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    .line 196
    or-int/lit16 v0, v0, 0x200

    .line 198
    :cond_3
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    .line 199
    or-int/lit16 v0, v0, 0x400

    .line 201
    :cond_4
    return v0
.end method

.method public static getTypedKeyEventGuess(Ljava/lang/String;Ljava/lang/String;)Landroid/view/KeyEvent;
    .locals 4
    .param p0, "oldtext"    # Ljava/lang/String;
    .param p1, "newtext"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 359
    if-nez p0, :cond_1

    .line 360
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 361
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->androidKeyEventForCharacter(C)Landroid/view/KeyEvent;

    move-result-object v0

    .line 377
    :cond_0
    :goto_0
    return-object v0

    .line 368
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->androidKeyEventForCharacter(C)Landroid/view/KeyEvent;

    move-result-object v0

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x43

    invoke-direct {v0, v3, v1}, Landroid/view/KeyEvent;-><init>(II)V

    goto :goto_0
.end method

.method private hasInputType()Z
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTextInputType(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 297
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/chromium/ui/picker/InputDialogContainer;->isDialogInputType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeAppendBackgroundColorSpan(JIII)V
.end method

.method private static native nativeAppendUnderlineSpan(JII)V
.end method

.method private native nativeAttachImeAdapter(J)V
.end method

.method private native nativeCommitText(JLjava/lang/String;)V
.end method

.method private native nativeCopy(J)V
.end method

.method private native nativeCut(J)V
.end method

.method private native nativeDeleteSurroundingText(JII)V
.end method

.method private native nativeFinishComposingText(J)V
.end method

.method private native nativePaste(J)V
.end method

.method private native nativeResetImeAdapter(J)V
.end method

.method private native nativeSelectAll(J)V
.end method

.method private native nativeSendKeyEvent(JLandroid/view/KeyEvent;IIJIZI)Z
.end method

.method private native nativeSendSyntheticKeyEvent(JIJIII)Z
.end method

.method private native nativeSetComposingRegion(JII)V
.end method

.method private native nativeSetComposingText(JLjava/lang/CharSequence;Ljava/lang/String;I)V
.end method

.method private native nativeSetEditableSelectionOffsets(JII)V
.end method

.method private native nativeUnselect(J)V
.end method

.method private populateUnderlinesFromSpans(Ljava/lang/CharSequence;J)V
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "underlines"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 615
    instance-of v6, p1, Landroid/text/SpannableString;

    if-nez v6, :cond_1

    .line 630
    :cond_0
    return-void

    :cond_1
    move-object v4, p1

    .line 617
    check-cast v4, Landroid/text/SpannableString;

    .line 618
    .local v4, "spannableString":Landroid/text/SpannableString;
    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Landroid/text/style/CharacterStyle;

    invoke-virtual {v4, v6, v7, v8}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/CharacterStyle;

    .line 620
    .local v5, "spans":[Landroid/text/style/CharacterStyle;
    move-object v0, v5

    .local v0, "arr$":[Landroid/text/style/CharacterStyle;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 621
    .local v3, "span":Landroid/text/style/CharacterStyle;
    instance-of v6, v3, Landroid/text/style/BackgroundColorSpan;

    if-eqz v6, :cond_3

    .line 622
    invoke-virtual {v4, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    check-cast v3, Landroid/text/style/BackgroundColorSpan;

    .end local v3    # "span":Landroid/text/style/CharacterStyle;
    invoke-virtual {v3}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v8

    invoke-static {p2, p3, v6, v7, v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAppendBackgroundColorSpan(JIII)V

    .line 620
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    .restart local v3    # "span":Landroid/text/style/CharacterStyle;
    :cond_3
    instance-of v6, v3, Landroid/text/style/UnderlineSpan;

    if-eqz v6, :cond_2

    .line 626
    invoke-virtual {v4, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-static {p2, p3, v6, v7}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAppendUnderlineSpan(JII)V

    goto :goto_1
.end method

.method private shouldSendKeyEventWithKeyCode(Ljava/lang/String;)I
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0xe5

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 325
    :cond_0
    :goto_0
    return v0

    .line 323
    :cond_1
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x42

    goto :goto_0

    .line 324
    :cond_2
    const-string v1, "\t"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3d

    goto :goto_0
.end method

.method private showKeyboard()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 273
    iput-boolean v4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsShowWithoutHideOutstanding:Z

    .line 274
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v3}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)V

    .line 276
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v4, :cond_0

    .line 278
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onKeyboardBoundsUnchanged()V

    .line 280
    :cond_0
    return-void
.end method


# virtual methods
.method public attach(J)V
    .locals 6
    .param p1, "nativeImeAdapter"    # J

    .prologue
    const/4 v3, 0x0

    .line 269
    move-object v0, p0

    move-wide v1, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(JIIZ)V

    .line 270
    return-void
.end method

.method checkCompositionQueueAndCallNative(Ljava/lang/CharSequence;IZ)Z
    .locals 15
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "isCommit"    # Z

    .prologue
    .line 398
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 473
    :goto_0
    return v0

    .line 399
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onImeEvent()V

    .line 401
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 402
    .local v12, "textStr":Ljava/lang/String;
    invoke-direct {p0, v12}, Lorg/chromium/content/browser/input/ImeAdapter;->shouldSendKeyEventWithKeyCode(Ljava/lang/String;)I

    move-result v6

    .line 403
    .local v6, "keyCode":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 405
    .local v4, "timeStampMs":J
    const/16 v0, 0xe5

    if-eq v6, v0, :cond_1

    .line 406
    const/4 v0, 0x6

    invoke-virtual {p0, v6, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEventWithKeyCode(II)V

    .line 472
    :goto_1
    iput-object v12, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    .line 473
    const/4 v0, 0x1

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    invoke-static {v0, v12}, Lorg/chromium/content/browser/input/ImeAdapter;->getTypedKeyEventGuess(Ljava/lang/String;Ljava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v14

    .line 410
    .local v14, "keyEvent":Landroid/view/KeyEvent;
    const/4 v7, 0x0

    .line 411
    .local v7, "modifiers":I
    if-eqz v14, :cond_2

    .line 412
    invoke-virtual {v14}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 413
    invoke-virtual {v14}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->getModifiers(I)I

    move-result v7

    .line 423
    :goto_2
    if-lez v6, :cond_5

    if-eqz p3, :cond_5

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 424
    iput v6, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSyntheticKeyCode:I

    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v14, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-static {v14, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 414
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 415
    const/4 v6, 0x0

    goto :goto_2

    .line 417
    :cond_3
    const/4 v6, -0x1

    goto :goto_2

    .line 425
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 431
    :cond_5
    const/16 v6, 0xe5

    .line 432
    const/4 v7, 0x0

    .line 452
    if-ltz v6, :cond_6

    .line 453
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const/4 v3, 0x7

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(JIJIII)Z

    .line 457
    :cond_6
    if-eqz p3, :cond_8

    .line 458
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1, v12}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeCommitText(JLjava/lang/String;)V

    .line 459
    const/4 v12, 0x0

    .line 464
    :goto_3
    if-ltz v6, :cond_7

    .line 465
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const/16 v3, 0x9

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(JIJIII)Z

    .line 469
    :cond_7
    iput v6, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSyntheticKeyCode:I

    goto :goto_1

    .line 461
    :cond_8
    iget-wide v9, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    move-object v8, p0

    move-object/from16 v11, p1

    move/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetComposingText(JLjava/lang/CharSequence;Ljava/lang/String;I)V

    goto :goto_3
.end method

.method public copy()Z
    .locals 4

    .prologue
    .line 591
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 593
    :goto_0
    return v0

    .line 592
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeCopy(J)V

    .line 593
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cut()Z
    .locals 4

    .prologue
    .line 581
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 583
    :goto_0
    return v0

    .line 582
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeCut(J)V

    .line 583
    const/4 v0, 0x1

    goto :goto_0
.end method

.method deleteSurroundingText(II)Z
    .locals 4
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 525
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onImeEvent()V

    .line 526
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 528
    :goto_0
    return v0

    .line 527
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeDeleteSurroundingText(JII)V

    .line 528
    const/4 v0, 0x1

    goto :goto_0
.end method

.method detach()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInputRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 641
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    .line 642
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    .line 643
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 314
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method finishComposingText()V
    .locals 4

    .prologue
    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    .line 478
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeFinishComposingText(J)V

    goto :goto_0
.end method

.method getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    return-object v0
.end method

.method getTextInputFlags()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputFlags:I

    return v0
.end method

.method getTextInputType()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    return v0
.end method

.method public hasTextInputType()Z
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->isTextInputType(I)Z

    move-result v0

    return v0
.end method

.method public isSelectionPassword()Z
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public paste()Z
    .locals 4

    .prologue
    .line 601
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 603
    :goto_0
    return v0

    .line 602
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativePaste(J)V

    .line 603
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectAll()Z
    .locals 4

    .prologue
    .line 571
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 573
    :goto_0
    return v0

    .line 572
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSelectAll(J)V

    .line 573
    const/4 v0, 0x1

    goto :goto_0
.end method

.method sendKeyEventWithKeyCode(II)V
    .locals 17
    .param p1, "keyCode"    # I
    .param p2, "flags"    # I

    .prologue
    .line 381
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 382
    .local v3, "eventTime":J
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSyntheticKeyCode:I

    .line 383
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-wide v5, v3

    move/from16 v8, p1

    move/from16 v13, p2

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;I)Z

    .line 387
    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-wide v8, v3

    move/from16 v11, p1

    move/from16 v16, p2

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;I)Z

    .line 391
    return-void
.end method

.method sendSyntheticKeyEvent(IJIII)Z
    .locals 9
    .param p1, "eventType"    # I
    .param p2, "timestampMs"    # J
    .param p4, "keyCode"    # I
    .param p5, "modifiers"    # I
    .param p6, "unicodeChar"    # I

    .prologue
    .line 509
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 513
    :goto_0
    return v0

    .line 511
    :cond_0
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(JIJIII)Z

    .line 513
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setComposingRegion(Ljava/lang/CharSequence;II)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 550
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 553
    :goto_0
    return v0

    .line 551
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetComposingRegion(JII)V

    .line 552
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    .line 553
    const/4 v0, 0x1

    goto :goto_0

    .line 552
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setEditableSelectionOffsets(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 538
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 540
    :goto_0
    return v0

    .line 539
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetEditableSelectionOffsets(JII)V

    .line 540
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setInputConnection(Lorg/chromium/content/browser/input/AdapterInputConnection;)V
    .locals 1
    .param p1, "inputConnection"    # Lorg/chromium/content/browser/input/AdapterInputConnection;

    .prologue
    .line 164
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setInputMethodManagerWrapper(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;)V
    .locals 0
    .param p1, "immw"    # Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 147
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 148
    return-void
.end method

.method translateAndSendNativeEvents(Landroid/view/KeyEvent;I)Z
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "accentChar"    # I

    .prologue
    const/4 v9, 0x0

    .line 483
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return v9

    .line 485
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    .line 486
    .local v11, "action":I
    if-eqz v11, :cond_2

    const/4 v0, 0x1

    if-ne v11, v0, :cond_0

    .line 499
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onImeEvent()V

    .line 500
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    invoke-static {p2, v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->maybeAddAccentToCharacter(II)I

    move-result v10

    .line 502
    .local v10, "unicodeChar":I
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->getModifiers(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v10}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendKeyEvent(JLandroid/view/KeyEvent;IIJIZI)Z

    move-result v9

    goto :goto_0
.end method

.method public unselect()Z
    .locals 4

    .prologue
    .line 561
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 563
    :goto_0
    return v0

    .line 562
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeUnselect(J)V

    .line 563
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateKeyboardVisibility(JIIZ)V
    .locals 6
    .param p1, "nativeImeAdapter"    # J
    .param p3, "textInputType"    # I
    .param p4, "textInputFlags"    # I
    .param p5, "showIfNeeded"    # Z

    .prologue
    .line 214
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-nez v0, :cond_1

    if-nez p5, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-eq v0, p3, :cond_3

    .line 223
    :cond_2
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(JIIZ)V

    .line 225
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    .line 227
    if-eqz p5, :cond_0

    .line 228
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->showKeyboard()V

    goto :goto_0

    .line 231
    :cond_3
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->hasInputType()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 232
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->showKeyboard()V

    goto :goto_0
.end method
