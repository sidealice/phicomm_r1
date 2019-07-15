.class public Lcom/unisound/vui/util/upload/user/LogUploader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/util/upload/user/Uploader;


# static fields
.field private static final LOG_UPLOADER_TAG:Ljava/lang/String; = "LogUploader"

.field private static final LOG_UPLOADER_URL:Ljava/lang/String; = "http://10.200.19.108:8080/app_wx_adapt_service/m/uploadAppLogFile"

.field private static final TAG:Ljava/lang/String; = "LogUploader"


# instance fields
.field private crashFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private isCrashFileExist:Z

.field private requester:Lcom/unisound/vui/util/upload/SimpleRequester;

.field private simpleRequestListener:Lcom/unisound/vui/util/upload/SimpleRequestListener;

.field private threadPool:Ljava/util/concurrent/ExecutorService;

.field private uploaderListener:Lcom/unisound/vui/util/upload/user/UploaderListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/vui/util/upload/user/LogUploader$1;

    invoke-direct {v0, p0}, Lcom/unisound/vui/util/upload/user/LogUploader$1;-><init>(Lcom/unisound/vui/util/upload/user/LogUploader;)V

    iput-object v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader;->simpleRequestListener:Lcom/unisound/vui/util/upload/SimpleRequestListener;

    sget-object v0, Lcom/unisound/vui/util/CrashHandler;->HPROF_FILE_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unisound/vui/util/upload/user/LogUploader;->getCrashLogFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader;->isCrashFileExist:Z

    new-instance v0, Lcom/unisound/vui/util/upload/SimpleRequester;

    invoke-direct {v0}, Lcom/unisound/vui/util/upload/SimpleRequester;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader;->requester:Lcom/unisound/vui/util/upload/SimpleRequester;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/util/upload/user/LogUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/vui/util/upload/user/LogUploader;

    .prologue
    invoke-direct {p0}, Lcom/unisound/vui/util/upload/user/LogUploader;->deleteCrashFile()V

    return-void
.end method

.method static synthetic access$100(Lcom/unisound/vui/util/upload/user/LogUploader;)Lcom/unisound/vui/util/upload/user/UploaderListener;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/util/upload/user/LogUploader;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader;->uploaderListener:Lcom/unisound/vui/util/upload/user/UploaderListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/unisound/vui/util/upload/user/LogUploader;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/util/upload/user/LogUploader;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader;->crashFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/unisound/vui/util/upload/user/LogUploader;Ljava/io/File;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/vui/util/upload/user/LogUploader;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/util/upload/user/LogUploader;->renderByte(Ljava/io/File;[B)V

    return-void
.end method

.method private deleteCrashFile()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unisound/vui/util/upload/user/LogUploader$2;

    invoke-direct {v1, p0}, Lcom/unisound/vui/util/upload/user/LogUploader$2;-><init>(Lcom/unisound/vui/util/upload/user/LogUploader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private getCrashLogFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "hprofFilePath"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader;->crashFileList:Ljava/util/List;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private renderByte(Ljava/io/File;[B)V
    .locals 2
    .param p1, "crashFile"    # Ljava/io/File;
    .param p2, "crashLogByte"    # [B

    .prologue
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array p2, v1, [B

    invoke-virtual {v0, p2}, Ljava/io/FileInputStream;->read([B)I

    return-void
.end method


# virtual methods
.method public getCrashLogByte()[B
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unisound/vui/util/upload/user/LogUploader;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/unisound/vui/util/upload/user/LogUploader$3;

    invoke-direct {v2, p0, v0}, Lcom/unisound/vui/util/upload/user/LogUploader$3;-><init>(Lcom/unisound/vui/util/upload/user/LogUploader;[B)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public upload(Lorg/json/JSONObject;Lcom/unisound/vui/util/upload/user/UploaderListener;)V
    .locals 5
    .param p1, "body"    # Lorg/json/JSONObject;
    .param p2, "uploaderListener"    # Lcom/unisound/vui/util/upload/user/UploaderListener;

    .prologue
    iget-boolean v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader;->isCrashFileExist:Z

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/unisound/vui/util/upload/user/LogUploader;->uploaderListener:Lcom/unisound/vui/util/upload/user/UploaderListener;

    invoke-virtual {p0}, Lcom/unisound/vui/util/upload/user/LogUploader;->getCrashLogByte()[B

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/util/upload/user/LogUploader;->requester:Lcom/unisound/vui/util/upload/SimpleRequester;

    const-string v2, "LogUploader"

    const-string v3, "http://10.200.19.108:8080/app_wx_adapt_service/m/uploadAppLogFile"

    iget-object v4, p0, Lcom/unisound/vui/util/upload/user/LogUploader;->simpleRequestListener:Lcom/unisound/vui/util/upload/SimpleRequestListener;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/unisound/vui/util/upload/SimpleRequester;->request(Ljava/lang/String;Ljava/lang/String;[BLcom/unisound/vui/util/upload/SimpleRequestListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "LogUploader"

    const-string v1, "no crash file exist"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
