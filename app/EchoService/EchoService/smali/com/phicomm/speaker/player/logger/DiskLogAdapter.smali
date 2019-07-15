.class public Lcom/phicomm/speaker/player/logger/DiskLogAdapter;
.super Ljava/lang/Object;
.source "DiskLogAdapter.java"

# interfaces
.implements Lcom/phicomm/speaker/player/logger/LogAdapter;


# static fields
.field public static logLevel:I


# instance fields
.field private final formatStrategy:Lcom/phicomm/speaker/player/logger/FormatStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x2

    sput v0, Lcom/phicomm/speaker/player/logger/DiskLogAdapter;->logLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->newBuilder()Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->build()Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/logger/DiskLogAdapter;->formatStrategy:Lcom/phicomm/speaker/player/logger/FormatStrategy;

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/phicomm/speaker/player/logger/FormatStrategy;)V
    .locals 0
    .param p1, "formatStrategy"    # Lcom/phicomm/speaker/player/logger/FormatStrategy;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/phicomm/speaker/player/logger/DiskLogAdapter;->formatStrategy:Lcom/phicomm/speaker/player/logger/FormatStrategy;

    .line 14
    return-void
.end method


# virtual methods
.method public isLoggable(ILjava/lang/String;)Z
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 18
    sget v0, Lcom/phicomm/speaker/player/logger/DiskLogAdapter;->logLevel:I

    if-ge p1, v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/player/logger/DiskLogAdapter;->formatStrategy:Lcom/phicomm/speaker/player/logger/FormatStrategy;

    invoke-interface {v0, p1, p2, p3}, Lcom/phicomm/speaker/player/logger/FormatStrategy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
