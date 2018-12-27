.class public Lorg/chromium/base/metrics/RecordHistogram;
.super Ljava/lang/Object;
.source "RecordHistogram.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "base::android"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHistogramValueCountForTesting(Ljava/lang/String;I)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 110
    invoke-static {p0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->nativeGetHistogramValueCountForTesting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static initialize()V
    .locals 0

    .prologue
    .line 117
    invoke-static {}, Lorg/chromium/base/metrics/RecordHistogram;->nativeInitialize()V

    .line 118
    return-void
.end method

.method private static native nativeGetHistogramValueCountForTesting(Ljava/lang/String;I)I
.end method

.method private static native nativeInitialize()V
.end method

.method private static native nativeRecordBooleanHistogram(Ljava/lang/String;IZ)V
.end method

.method private static native nativeRecordCustomTimesHistogramMilliseconds(Ljava/lang/String;IJJJI)V
.end method

.method private static native nativeRecordEnumeratedHistogram(Ljava/lang/String;III)V
.end method

.method public static recordBooleanHistogram(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # Z

    .prologue
    .line 29
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordBooleanHistogram(Ljava/lang/String;IZ)V

    .line 30
    return-void
.end method

.method public static recordCustomTimesHistogram(Ljava/lang/String;JJJLjava/util/concurrent/TimeUnit;I)V
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "min"    # J
    .param p5, "max"    # J
    .param p7, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p8, "numBuckets"    # I

    .prologue
    .line 93
    invoke-virtual {p7, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {p7, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {p7, p5, p6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    move-object v0, p0

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 95
    return-void
.end method

.method private static recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "min"    # J
    .param p5, "max"    # J
    .param p7, "numBuckets"    # I

    .prologue
    .line 99
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordCustomTimesHistogramMilliseconds(Ljava/lang/String;IJJJI)V

    .line 101
    return-void
.end method

.method public static recordEnumeratedHistogram(Ljava/lang/String;II)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I
    .param p2, "boundary"    # I

    .prologue
    .line 42
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordEnumeratedHistogram(Ljava/lang/String;III)V

    .line 43
    return-void
.end method

.method public static recordLongTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v3, 0x1

    .line 77
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    const/16 v7, 0x32

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 79
    return-void
.end method

.method public static recordMediumTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 65
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-wide/16 v3, 0xa

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    const/16 v7, 0x32

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 67
    return-void
.end method

.method public static recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 53
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xa

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    const/16 v7, 0x32

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 55
    return-void
.end method
