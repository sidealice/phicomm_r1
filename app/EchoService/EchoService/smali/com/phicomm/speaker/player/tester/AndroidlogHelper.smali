.class public Lcom/phicomm/speaker/player/tester/AndroidlogHelper;
.super Ljava/lang/Object;
.source "AndroidlogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/tester/AndroidlogHelper$1;,
        Lcom/phicomm/speaker/player/tester/AndroidlogHelper$RecordThread;
    }
.end annotation


# instance fields
.field private PATH_LOGCAT:Ljava/lang/String;

.field protected fileName:Ljava/lang/String;

.field private mRecordThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/tester/AndroidlogHelper;->mRecordThread:Ljava/lang/Thread;

    .line 13
    const-string v0, "/sdcard/androidlog/"

    iput-object v0, p0, Lcom/phicomm/speaker/player/tester/AndroidlogHelper;->PATH_LOGCAT:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/tester/AndroidlogHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/tester/AndroidlogHelper;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/phicomm/speaker/player/tester/AndroidlogHelper;->PATH_LOGCAT:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public startLogRecord(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/phicomm/speaker/player/tester/AndroidlogHelper;->PATH_LOGCAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/phicomm/speaker/player/tester/AndroidlogHelper;->fileName:Ljava/lang/String;

    .line 20
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/phicomm/speaker/player/tester/AndroidlogHelper$RecordThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/phicomm/speaker/player/tester/AndroidlogHelper$RecordThread;-><init>(Lcom/phicomm/speaker/player/tester/AndroidlogHelper;Lcom/phicomm/speaker/player/tester/AndroidlogHelper$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/tester/AndroidlogHelper;->mRecordThread:Ljava/lang/Thread;

    .line 21
    iget-object v1, p0, Lcom/phicomm/speaker/player/tester/AndroidlogHelper;->mRecordThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 22
    return-void
.end method

.method public stopLogRecord()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/phicomm/speaker/player/tester/AndroidlogHelper;->mRecordThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 26
    return-void
.end method
