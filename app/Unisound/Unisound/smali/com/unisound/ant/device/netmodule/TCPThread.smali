.class public Lcom/unisound/ant/device/netmodule/TCPThread;
.super Ljava/lang/Thread;
.source "TCPThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApWifi-TCPThread"

.field private static final UDP_CLIENT_PORT:I = 0x270d


# instance fields
.field deviceId:Ljava/lang/String;

.field ip:Ljava/lang/String;

.field isStop:Z

.field mDeviceName:Ljava/lang/String;

.field mSocket:Ljava/net/Socket;

.field mWriter:Ljava/io/PrintWriter;

.field udid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "Ip"    # Ljava/lang/String;
    .param p2, "DeviceId"    # Ljava/lang/String;
    .param p3, "udid"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mSocket:Ljava/net/Socket;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->isStop:Z

    .line 24
    iput-object p1, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->ip:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->deviceId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->udid:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mDeviceName:Ljava/lang/String;

    .line 28
    const-string v0, "ApWifi-TCPThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DeviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " udid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deviceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private clearSocket()V
    .locals 2

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mSocket:Ljava/net/Socket;

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mWriter:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 39
    const-string v5, "ApWifi-TCPThread"

    const-string v6, "tcp long conenct started"

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v5, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->ip:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, "isSuc":Z
    const/4 v4, 0x0

    .line 43
    .local v4, "tryCount":I
    :goto_0
    if-nez v2, :cond_0

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    iget-boolean v5, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->isStop:Z

    if-nez v5, :cond_0

    .line 45
    :try_start_0
    const-string v5, "ApWifi-TCPThread"

    const-string v6, "will conenct client ip : %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->ip:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    new-instance v5, Ljava/net/Socket;

    iget-object v6, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->ip:Ljava/lang/String;

    const/16 v7, 0x270d

    invoke-direct {v5, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mSocket:Ljava/net/Socket;

    .line 49
    new-instance v5, Ljava/io/PrintWriter;

    iget-object v6, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mWriter:Ljava/io/PrintWriter;

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/16 v5, 0x1f

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "split":Ljava/lang/String;
    iget-object v5, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 53
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->deviceId:Ljava/lang/String;

    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 55
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->udid:Ljava/lang/String;

    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 57
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Lcom/unisound/vui/util/ExoConstants;->APP_KEY:Ljava/lang/String;

    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    iget-object v5, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 60
    iget-object v5, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 61
    const-string v5, "ApWifi-TCPThread"

    const-string v6, "response device name : %s,deviceId: %s,udid: %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->mDeviceName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->deviceId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->udid:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const/4 v2, 0x1

    .line 68
    invoke-direct {p0}, Lcom/unisound/ant/device/netmodule/TCPThread;->clearSocket()V

    goto/16 :goto_0

    .line 64
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "split":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/unisound/ant/device/netmodule/TCPThread;->clearSocket()V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/unisound/ant/device/netmodule/TCPThread;->clearSocket()V

    throw v5

    .line 72
    .end local v2    # "isSuc":Z
    .end local v4    # "tryCount":I
    :cond_0
    return-void
.end method

.method public stopRun()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "ApWifi-TCPThread"

    const-string v1, "stopRun"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/ant/device/netmodule/TCPThread;->isStop:Z

    .line 35
    invoke-direct {p0}, Lcom/unisound/ant/device/netmodule/TCPThread;->clearSocket()V

    .line 36
    return-void
.end method
