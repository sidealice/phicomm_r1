.class public final Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;
.super Ljava/lang/Object;
.source "CsvFormatStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final MAX_BYTES:I = 0x7d000


# instance fields
.field date:Ljava/util/Date;

.field dateFormat:Ljava/text/SimpleDateFormat;

.field folder:Ljava/lang/String;

.field logStrategy:Lcom/phicomm/speaker/player/logger/LogStrategy;

.field showDateInfo:Z

.field tag:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "PRETTY_LOGGER"

    iput-object v0, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->tag:Ljava/lang/String;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->showDateInfo:Z

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$1;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;
    .locals 6

    .prologue
    .line 131
    iget-object v3, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->date:Ljava/util/Date;

    if-nez v3, :cond_0

    .line 132
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->date:Ljava/util/Date;

    .line 134
    :cond_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->dateFormat:Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_1

    .line 135
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy.MM.dd HH:mm:ss.SSS"

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->logStrategy:Lcom/phicomm/speaker/player/logger/LogStrategy;

    if-nez v3, :cond_3

    .line 138
    iget-object v3, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->folder:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 139
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "diskPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "logger"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->folder:Ljava/lang/String;

    .line 143
    .end local v0    # "diskPath":Ljava/lang/String;
    :cond_2
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AndroidFileLogger."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->folder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 145
    new-instance v1, Lcom/phicomm/speaker/player/logger/DiskLogStrategy$WriteHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->folder:Ljava/lang/String;

    const v5, 0x7d000

    invoke-direct {v1, v3, v4, v5}, Lcom/phicomm/speaker/player/logger/DiskLogStrategy$WriteHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;I)V

    .line 146
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/phicomm/speaker/player/logger/DiskLogStrategy;

    invoke-direct {v3, v1}, Lcom/phicomm/speaker/player/logger/DiskLogStrategy;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->logStrategy:Lcom/phicomm/speaker/player/logger/LogStrategy;

    .line 148
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "ht":Landroid/os/HandlerThread;
    :cond_3
    new-instance v3, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;-><init>(Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$1;)V

    return-object v3
.end method

.method public date(Ljava/util/Date;)Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;
    .locals 0
    .param p1, "val"    # Ljava/util/Date;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->date:Ljava/util/Date;

    .line 102
    return-object p0
.end method

.method public dateFormat(Ljava/text/SimpleDateFormat;)Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;
    .locals 0
    .param p1, "val"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 107
    return-object p0
.end method

.method public folder(Ljava/lang/String;)Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->folder:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public logStrategy(Lcom/phicomm/speaker/player/logger/LogStrategy;)Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;
    .locals 0
    .param p1, "val"    # Lcom/phicomm/speaker/player/logger/LogStrategy;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->logStrategy:Lcom/phicomm/speaker/player/logger/LogStrategy;

    .line 122
    return-object p0
.end method

.method public showDateInfo(Z)Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->showDateInfo:Z

    .line 112
    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->tag:Ljava/lang/String;

    .line 127
    return-object p0
.end method
