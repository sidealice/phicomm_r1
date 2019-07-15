.class public Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;
.super Ljava/lang/Object;
.source "CsvFormatStrategy.java"

# interfaces
.implements Lcom/phicomm/speaker/player/logger/FormatStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$1;,
        Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;
    }
.end annotation


# static fields
.field private static final NEW_LINE:Ljava/lang/String;

.field private static final NEW_LINE_REPLACEMENT:Ljava/lang/String; = " <br> "

.field private static final SEPARATOR:Ljava/lang/String; = ","


# instance fields
.field private final date:Ljava/util/Date;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private final logStrategy:Lcom/phicomm/speaker/player/logger/LogStrategy;

.field private final showDateInfo:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget-object v0, p1, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->date:Ljava/util/Date;

    iput-object v0, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->date:Ljava/util/Date;

    .line 31
    iget-object v0, p1, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->dateFormat:Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 32
    iget-object v0, p1, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->logStrategy:Lcom/phicomm/speaker/player/logger/LogStrategy;

    iput-object v0, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->logStrategy:Lcom/phicomm/speaker/player/logger/LogStrategy;

    .line 33
    iget-object v0, p1, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->tag:Ljava/lang/String;

    .line 34
    iget-boolean v0, p1, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->showDateInfo:Z

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->showDateInfo:Z

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;-><init>(Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;)V

    return-void
.end method

.method private formatTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p1}, Lcom/phicomm/speaker/player/logger/Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/player/logger/Utils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public static newBuilder()Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;-><init>(Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$1;)V

    return-object v0
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "priority"    # I
    .param p2, "onceOnlyTag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->formatTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->date:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->showDateInfo:Z

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v2, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {p1}, Lcom/phicomm/speaker/player/logger/Utils;->logLevel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    sget-object v2, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    sget-object v2, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->NEW_LINE:Ljava/lang/String;

    const-string v3, " <br> "

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 71
    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    sget-object v2, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v2, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->logStrategy:Lcom/phicomm/speaker/player/logger/LogStrategy;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v1, v3}, Lcom/phicomm/speaker/player/logger/LogStrategy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
