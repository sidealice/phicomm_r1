.class public Lcom/phicomm/speaker/player/exomedia/util/TimeFormatUtil;
.super Ljava/lang/Object;
.source "TimeFormatUtil.java"


# static fields
.field private static formatBuilder:Ljava/lang/StringBuilder;

.field private static formatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/util/TimeFormatUtil;->formatBuilder:Ljava/lang/StringBuilder;

    .line 10
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/util/TimeFormatUtil;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/util/TimeFormatUtil;->formatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatMs(J)Ljava/lang/String;
    .locals 12
    .param p0, "milliseconds"    # J

    .prologue
    .line 22
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-gez v6, :cond_0

    .line 23
    const-string v6, "--:--"

    .line 35
    :goto_0
    return-object v6

    .line 26
    :cond_0
    const-wide/32 v6, 0xea60

    rem-long v6, p0, v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 27
    .local v4, "seconds":J
    const-wide/32 v6, 0x36ee80

    rem-long v6, p0, v6

    const-wide/32 v8, 0xea60

    div-long v2, v6, v8

    .line 28
    .local v2, "minutes":J
    const-wide/32 v6, 0x5265c00

    rem-long v6, p0, v6

    const-wide/32 v8, 0x36ee80

    div-long v0, v6, v8

    .line 30
    .local v0, "hours":J
    sget-object v6, Lcom/phicomm/speaker/player/exomedia/util/TimeFormatUtil;->formatBuilder:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 31
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 32
    sget-object v6, Lcom/phicomm/speaker/player/exomedia/util/TimeFormatUtil;->formatter:Ljava/util/Formatter;

    const-string v7, "%d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 35
    :cond_1
    sget-object v6, Lcom/phicomm/speaker/player/exomedia/util/TimeFormatUtil;->formatter:Ljava/util/Formatter;

    const-string v7, "%02d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
