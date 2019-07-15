.class public Lcom/phicomm/speaker/e/c;
.super Ljava/lang/Object;
.source "UniTimeManger.java"


# static fields
.field private static volatile a:Lcom/phicomm/speaker/e/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/phicomm/speaker/e/c;
    .locals 2

    .line 26
    sget-object v0, Lcom/phicomm/speaker/e/c;->a:Lcom/phicomm/speaker/e/c;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/phicomm/speaker/e/c;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/phicomm/speaker/e/c;->a:Lcom/phicomm/speaker/e/c;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/phicomm/speaker/e/c;

    invoke-direct {v1}, Lcom/phicomm/speaker/e/c;-><init>()V

    sput-object v1, Lcom/phicomm/speaker/e/c;->a:Lcom/phicomm/speaker/e/c;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/phicomm/speaker/e/c;->a:Lcom/phicomm/speaker/e/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/unisound/lib/time/bean/NoteInfo;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/lib/time/bean/NoteInfo;",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/unisound/lib/UnisTimeMgrAssistant;->getInstance()Lcom/unisound/lib/UnisTimeMgrAssistant;

    move-result-object v0

    const-string v1, "rb35fqpoz33hyu56zh4kklgqqwdicqcmbxzwe4qc"

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/unisound/lib/UnisTimeMgrAssistant;->delNote(Ljava/lang/String;Lcom/unisound/lib/time/bean/NoteInfo;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/lib/UnisDeviceAssistant;->resetDeviceData(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unisound/lib/time/bean/AlarmReminder;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/unisound/lib/UnisTimeMgrAssistant;->getInstance()Lcom/unisound/lib/UnisTimeMgrAssistant;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/unisound/lib/UnisTimeMgrAssistant;->updateAlarm(Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/time/bean/NoteInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/unisound/lib/UnisTimeMgrAssistant;->getInstance()Lcom/unisound/lib/UnisTimeMgrAssistant;

    move-result-object v0

    const-string v1, "rb35fqpoz33hyu56zh4kklgqqwdicqcmbxzwe4qc"

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/unisound/lib/UnisTimeMgrAssistant;->getAllNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/time/bean/TimeManageBean;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/unisound/lib/UnisTimeMgrAssistant;->getInstance()Lcom/unisound/lib/UnisTimeMgrAssistant;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/lib/UnisTimeMgrAssistant;->getAllalarmData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unisound/lib/time/bean/AlarmReminder;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/unisound/lib/UnisTimeMgrAssistant;->getInstance()Lcom/unisound/lib/UnisTimeMgrAssistant;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/unisound/lib/UnisTimeMgrAssistant;->deleteAlarm(Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method
