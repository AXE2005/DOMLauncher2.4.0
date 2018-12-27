.class public Lorg/chromium/content/browser/input/AdapterInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "AdapterInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/AdapterInputConnection$ImeState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INVALID_COMPOSITION:I = -0x1

.field public static final INVALID_SELECTION:I = -0x1

.field private static final NO_ACCENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AdapterInputConnection"


# instance fields
.field private final mEditable:Landroid/text/Editable;

.field private final mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private final mInternalView:Landroid/view/View;

.field private mLastUpdateCompositionEnd:I

.field private mLastUpdateCompositionStart:I

.field private mLastUpdateSelectionEnd:I

.field private mLastUpdateSelectionStart:I

.field private mNumNestedBatchEdits:I

.field private mPendingAccent:I

.field private mSingleLine:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/text/Editable;Landroid/view/inputmethod/EditorInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imeAdapter"    # Lorg/chromium/content/browser/input/ImeAdapter;
    .param p3, "editable"    # Landroid/text/Editable;
    .param p4, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const v7, 0x8000

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 57
    invoke-direct {p0, p1, v4}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 46
    iput v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 49
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    .line 50
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    .line 51
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    .line 52
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    .line 58
    iput-object p1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    .line 59
    iput-object p2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 60
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2, p0}, Lorg/chromium/content/browser/input/ImeAdapter;->setInputConnection(Lorg/chromium/content/browser/input/AdapterInputConnection;)V

    .line 61
    iput-object p3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    .line 65
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Lorg/chromium/content/browser/input/AdapterInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 66
    iput-boolean v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    .line 67
    const/high16 v2, 0x12000000

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 69
    const/16 v2, 0xa1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 72
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputType()I

    move-result v1

    .line 73
    .local v1, "inputType":I
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputFlags()I

    move-result v0

    .line 74
    .local v0, "inputFlags":I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 75
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 78
    :cond_0
    if-ne v1, v4, :cond_2

    .line 80
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 81
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_1

    .line 82
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/2addr v2, v7

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 125
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 126
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 127
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    .line 128
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    .line 130
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    iget v3, p4, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v4, p4, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 131
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 132
    return-void

    .line 84
    :cond_2
    const/16 v2, 0xe

    if-eq v1, v2, :cond_3

    const/16 v2, 0xf

    if-ne v1, v2, :cond_5

    .line 87
    :cond_3
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0x24000

    or-int/2addr v2, v3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 89
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_4

    .line 90
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/2addr v2, v7

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 92
    :cond_4
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 93
    iput-boolean v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    goto :goto_0

    .line 94
    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 96
    const/16 v2, 0xe1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 98
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 99
    :cond_6
    if-ne v1, v6, :cond_7

    .line 101
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 102
    :cond_7
    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    .line 104
    const/16 v2, 0x11

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 106
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 107
    :cond_8
    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    .line 109
    const/16 v2, 0xd1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 111
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 112
    :cond_9
    const/4 v2, 0x6

    if-ne v1, v2, :cond_a

    .line 116
    iput v6, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 117
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    .line 118
    :cond_a
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 120
    const/16 v2, 0x2002

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 123
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0
.end method

.method private getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static maybeAddAccentToCharacter(II)I
    .locals 1
    .param p0, "accentChar"    # I
    .param p1, "unicodeChar"    # I

    .prologue
    .line 135
    if-eqz p0, :cond_0

    .line 136
    invoke-static {p0, p1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v0

    .line 137
    .local v0, "combinedChar":I
    if-eqz v0, :cond_0

    .line 141
    .end local v0    # "combinedChar":I
    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private maybePerformEmptyCompositionWorkaround(Ljava/lang/CharSequence;)Z
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, -0x1

    .line 572
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 573
    .local v4, "selectionStart":I
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 574
    .local v3, "selectionEnd":I
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 575
    .local v1, "compositionStart":I
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 576
    .local v0, "compositionEnd":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v4, v3, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v0, v6, :cond_0

    .line 579
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->beginBatchEdit()Z

    .line 580
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    .line 581
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 582
    .local v2, "selection":I
    sub-int v5, v2, v1

    sub-int v6, v2, v0

    invoke-virtual {p0, v5, v6}, Lorg/chromium/content/browser/input/AdapterInputConnection;->deleteSurroundingText(II)Z

    .line 583
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->endBatchEdit()Z

    .line 584
    const/4 v5, 0x1

    .line 586
    .end local v2    # "selection":I
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private updateSelectionIfRequired()V
    .locals 6

    .prologue
    .line 210
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 212
    .local v2, "selectionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 213
    .local v3, "selectionEnd":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 214
    .local v4, "compositionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 216
    .local v5, "compositionEnd":I
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    if-eq v0, v5, :cond_0

    .line 228
    :cond_2
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->updateSelection(Landroid/view/View;IIII)V

    .line 230
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    .line 231
    iput v3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    .line 232
    iput v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    .line 233
    iput v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v0, 0x1

    .line 256
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->maybePerformEmptyCompositionWorkaround(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    :goto_0
    return v0

    .line 257
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 258
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 259
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    :goto_1
    invoke-virtual {v1, p1, p2, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->checkCompositionQueueAndCallNative(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public deleteSurroundingText(II)Z
    .locals 12
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 349
    move v10, p1

    .line 350
    .local v10, "originalBeforeLength":I
    move v9, p2

    .line 351
    .local v9, "originalAfterLength":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v8

    .line 352
    .local v8, "availableBefore":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    sub-int v7, v0, v1

    .line 353
    .local v7, "availableAfter":I
    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 354
    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 355
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    .line 356
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 361
    const/4 v4, 0x0

    .line 362
    .local v4, "keyCode":I
    if-ne v10, v2, :cond_1

    if-nez v9, :cond_1

    .line 363
    const/16 v4, 0x43

    .line 368
    :cond_0
    :goto_0
    const/4 v11, 0x1

    .line 369
    .local v11, "result":Z
    if-nez v4, :cond_2

    .line 370
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v1, 0x7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyEvent(IJIII)Z

    move-result v11

    .line 372
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->deleteSurroundingText(II)Z

    move-result v0

    and-int/2addr v11, v0

    .line 373
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/16 v1, 0x9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyEvent(IJIII)Z

    move-result v0

    and-int/2addr v11, v0

    .line 379
    :goto_1
    return v11

    .line 364
    .end local v11    # "result":Z
    :cond_1
    if-nez v10, :cond_0

    if-ne v9, v2, :cond_0

    .line 365
    const/16 v4, 0x70

    goto :goto_0

    .line 376
    .restart local v11    # "result":Z
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v1, 0x6

    invoke-virtual {v0, v4, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEventWithKeyCode(II)V

    goto :goto_1
.end method

.method public endBatchEdit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 334
    iget v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    iget v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 337
    iget v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 338
    :cond_2
    iget v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 491
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 499
    :goto_0
    return v2

    .line 495
    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 496
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 497
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->finishComposingText()V

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 310
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 311
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 312
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 313
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 314
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 315
    iget-boolean v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 316
    return-object v0

    .line 315
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getImeStateForTesting()Lorg/chromium/content/browser/input/AdapterInputConnection$ImeState;
    .locals 6
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 609
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "text":Ljava/lang/String;
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 611
    .local v2, "selectionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 612
    .local v3, "selectionEnd":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 613
    .local v4, "compositionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 614
    .local v5, "compositionEnd":I
    new-instance v0, Lorg/chromium/content/browser/input/AdapterInputConnection$ImeState;

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/AdapterInputConnection$ImeState;-><init>(Ljava/lang/String;IIII)V

    return-object v0
.end method

.method isActive()Z
    .locals 2

    .prologue
    .line 555
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 289
    packed-switch p1, :pswitch_data_0

    .line 299
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 291
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->selectAll()Z

    move-result v0

    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->cut()Z

    move-result v0

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->copy()Z

    move-result v0

    goto :goto_0

    .line 297
    :pswitch_3
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->paste()Z

    move-result v0

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 7
    .param p1, "actionCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 269
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->restartInput()V

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 273
    .local v2, "timeStampMs":J
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v1, 0x7

    const/16 v4, 0x3d

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyEvent(IJIII)Z

    .line 280
    .end local v2    # "timeStampMs":J
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/16 v1, 0x42

    const/16 v4, 0x16

    invoke-virtual {v0, v1, v4}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEventWithKeyCode(II)V

    goto :goto_0
.end method

.method restartInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 521
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    .line 522
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 523
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 524
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-static {v9}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 393
    iget-object v9, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;I)Z

    move-result v9

    .line 482
    :goto_0
    return v9

    .line 398
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 399
    .local v2, "eventKeyCode":I
    const/16 v9, 0x43

    if-eq v2, v9, :cond_1

    const/16 v9, 0x70

    if-ne v2, v9, :cond_2

    .line 400
    :cond_1
    const/4 v9, 0x0

    iput v9, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 401
    iget-object v9, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;I)Z

    move-result v9

    goto :goto_0

    .line 404
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    .line 409
    .local v8, "unicodeChar":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 410
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/16 v10, 0x43

    if-ne v9, v10, :cond_3

    .line 411
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lorg/chromium/content/browser/input/AdapterInputConnection;->deleteSurroundingText(II)Z

    .line 412
    const/4 v9, 0x1

    goto :goto_0

    .line 413
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/16 v10, 0x70

    if-ne v9, v10, :cond_4

    .line 414
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lorg/chromium/content/browser/input/AdapterInputConnection;->deleteSurroundingText(II)Z

    .line 415
    const/4 v9, 0x1

    goto :goto_0

    .line 416
    :cond_4
    if-eqz v8, :cond_6

    .line 417
    iget-object v9, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v9}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 418
    .local v6, "selectionStart":I
    iget-object v9, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v9}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    .line 419
    .local v5, "selectionEnd":I
    if-le v6, v5, :cond_5

    .line 420
    move v7, v6

    .line 421
    .local v7, "temp":I
    move v6, v5

    .line 422
    move v5, v7

    .line 424
    .end local v7    # "temp":I
    :cond_5
    iget v9, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    invoke-static {v9, v8}, Lorg/chromium/content/browser/input/AdapterInputConnection;->maybeAddAccentToCharacter(II)I

    move-result v1

    .line 425
    .local v1, "combinedChar":I
    iget-object v9, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    int-to-char v10, v1

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6, v5, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 451
    .end local v1    # "combinedChar":I
    .end local v5    # "selectionEnd":I
    .end local v6    # "selectionStart":I
    :cond_6
    iget v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 452
    .local v4, "pendingAccent":I
    iget v3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 454
    .local v3, "nextAccent":I
    const/high16 v9, -0x80000000

    and-int/2addr v9, v8

    if-eqz v9, :cond_b

    .line 455
    const/4 v4, 0x0

    .line 456
    const v9, 0x7fffffff

    and-int v3, v8, v9

    .line 480
    :cond_7
    :goto_1
    iget-object v9, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v9, p1, v4}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;I)Z

    .line 481
    iput v3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 482
    const/4 v9, 0x1

    goto :goto_0

    .line 428
    .end local v3    # "nextAccent":I
    .end local v4    # "pendingAccent":I
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_6

    .line 430
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/16 v10, 0x42

    if-ne v9, v10, :cond_9

    .line 431
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->beginBatchEdit()Z

    .line 432
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    .line 433
    iget-object v9, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;I)Z

    .line 434
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->endBatchEdit()Z

    .line 435
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 436
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/16 v10, 0x43

    if-ne v9, v10, :cond_a

    .line 437
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 438
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/16 v10, 0x70

    if-ne v9, v10, :cond_6

    .line 439
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 457
    .restart local v3    # "nextAccent":I
    .restart local v4    # "pendingAccent":I
    :cond_b
    if-eqz v4, :cond_7

    .line 458
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_c

    .line 459
    invoke-static {v4, v8}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v0

    .line 460
    .local v0, "combined":I
    if-eqz v0, :cond_d

    .line 464
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-super {p0, v9, v10}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    .line 465
    iget-object v9, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/chromium/content/browser/input/ImeAdapter;->deleteSurroundingText(II)Z

    .line 474
    .end local v0    # "combined":I
    :cond_c
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 476
    const/4 v3, 0x0

    goto :goto_1

    .line 469
    .restart local v0    # "combined":I
    :cond_d
    const/4 v4, 0x0

    .line 470
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public setComposingRegion(II)Z
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 532
    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v3

    .line 533
    .local v3, "textLength":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 534
    .local v0, "a":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 535
    .local v1, "b":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 536
    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 537
    :cond_1
    if-le v0, v3, :cond_2

    move v0, v3

    .line 538
    :cond_2
    if-le v1, v3, :cond_3

    move v1, v3

    .line 540
    :cond_3
    if-ne v0, v1, :cond_5

    .line 541
    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Lorg/chromium/content/browser/input/AdapterInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 545
    :goto_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 547
    const/4 v2, 0x0

    .line 548
    .local v2, "regionText":Ljava/lang/CharSequence;
    if-le v1, v0, :cond_4

    .line 549
    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 551
    :cond_4
    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v4, v2, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->setComposingRegion(Ljava/lang/CharSequence;II)Z

    move-result v4

    return v4

    .line 543
    .end local v2    # "regionText":Ljava/lang/CharSequence;
    :cond_5
    invoke-super {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->maybePerformEmptyCompositionWorkaround(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    .line 245
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 246
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 247
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->checkCompositionQueueAndCallNative(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setSelection(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 508
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 509
    .local v0, "textLength":I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gt p1, v0, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 512
    :goto_0
    return v1

    .line 510
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    .line 511
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 512
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->setEditableSelectionOffsets(II)Z

    move-result v1

    goto :goto_0
.end method

.method public updateState(Ljava/lang/String;IIIIZ)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "compositionStart"    # I
    .param p5, "compositionEnd"    # I
    .param p6, "isNonImeChange"    # Z
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 170
    if-nez p6, :cond_0

    .line 195
    :goto_0
    return-void

    .line 173
    :cond_0
    const/16 v2, 0xa0

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p5, v2}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 180
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "prevText":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 183
    .local v1, "textUnchanged":Z
    if-nez v1, :cond_1

    .line 184
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 187
    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2, p2, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 189
    if-ne p4, p5, :cond_2

    .line 190
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Lorg/chromium/content/browser/input/AdapterInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 194
    :goto_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    goto :goto_0

    .line 192
    :cond_2
    invoke-super {p0, p4, p5}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_1
.end method
