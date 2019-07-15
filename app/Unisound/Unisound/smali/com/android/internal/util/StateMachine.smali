.class public Lcom/android/internal/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$SmHandler;,
        Lcom/android/internal/util/StateMachine$LogRecords;,
        Lcom/android/internal/util/StateMachine$LogRec;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field private static final SM_INIT_CMD:I = -0x2

.field private static final SM_QUIT_CMD:I = -0x1


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1248
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    .line 1249
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1250
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1252
    .local v0, "looper":Landroid/os/Looper;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1253
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1270
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1271
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1261
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1262
    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-object p1
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    .line 1239
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1240
    return-void
.end method


# virtual methods
.method protected addLogRec(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1471
    iget-object v7, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1472
    .local v7, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v7, :cond_0

    .line 1475
    :goto_0
    return-void

    .line 1473
    :cond_0
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1000(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1100(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v4

    .line 1474
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1800(Lcom/android/internal/util/StateMachine$SmHandler;)[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v1

    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1900(Lcom/android/internal/util/StateMachine$SmHandler;)I

    move-result v3

    aget-object v1, v1, v3

    iget-object v5, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2000(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/State;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    .line 1473
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected final addState(Lcom/android/internal/util/State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/util/State;

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$800(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1288
    return-void
.end method

.method protected final addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "parent"    # Lcom/android/internal/util/State;

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->access$800(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1280
    return-void
.end method

.method public final copyLogRecs()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1454
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1455
    .local v2, "vlr":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/internal/util/StateMachine$LogRec;>;"
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1456
    .local v1, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-eqz v1, :cond_0

    .line 1457
    invoke-static {v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/StateMachine$LogRecords;->access$1700(Lcom/android/internal/util/StateMachine$LogRecords;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$LogRec;

    .line 1458
    .local v0, "lr":Lcom/android/internal/util/StateMachine$LogRec;
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1461
    .end local v0    # "lr":Lcom/android/internal/util/StateMachine$LogRec;
    :cond_0
    return-object v2
.end method

.method protected final deferMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1400(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V

    .line 1360
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " total records="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getLogRecCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1944
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getLogRecSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1945
    const-string v1, " rec[%d]: %s\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/util/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1946
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1944
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1948
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1949
    return-void
.end method

.method protected final getCurrentMessage()Landroid/os/Message;
    .locals 2

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1306
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1307
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1000(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v1

    goto :goto_0
.end method

.method protected final getCurrentState()Lcom/android/internal/util/IState;
    .locals 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1316
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1317
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1100(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v1

    goto :goto_0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-object v0
.end method

.method public final getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1446
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1447
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->get(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v1

    goto :goto_0
.end method

.method public final getLogRecCount()I
    .locals 2

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1436
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1437
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->count()I

    move-result v1

    goto :goto_0
.end method

.method public final getLogRecSize()I
    .locals 2

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1426
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1427
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->size()I

    move-result v1

    goto :goto_0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1492
    const-string v0, ""

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1499
    const/4 v0, 0x0

    return-object v0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1376
    return-void
.end method

.method public isDbg()Z
    .locals 2

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1904
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1906
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2400(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v1

    goto :goto_0
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1871
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_1

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 1873
    :goto_0
    return v1

    .line 1871
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1873
    :cond_1
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2100(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    return-void
.end method

.method protected logAndAddLogRec(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1957
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->addLogRec(Ljava/lang/String;)V

    .line 1958
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1959
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2023
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    return-void
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(II)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected onHalting()V
    .locals 0

    .prologue
    .line 1384
    return-void
.end method

.method protected onQuitting()V
    .locals 0

    .prologue
    .line 1393
    return-void
.end method

.method protected final quit()V
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1882
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1885
    :goto_0
    return-void

    .line 1884
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2200(Lcom/android/internal/util/StateMachine$SmHandler;)V

    goto :goto_0
.end method

.method protected final quitNow()V
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1893
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1896
    :goto_0
    return-void

    .line 1895
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2300(Lcom/android/internal/util/StateMachine$SmHandler;)V

    goto :goto_0
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1481
    const/4 v0, 0x1

    return v0
.end method

.method protected final removeMessages(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1859
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1862
    :goto_0
    return-void

    .line 1861
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method public final sendMessage(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1618
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1621
    :goto_0
    return-void

    .line 1620
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1644
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1647
    :goto_0
    return-void

    .line 1646
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(III)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1657
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1660
    :goto_0
    return-void

    .line 1659
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1670
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1673
    :goto_0
    return-void

    .line 1672
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1631
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1634
    :goto_0
    return-void

    .line 1633
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1683
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1686
    :goto_0
    return-void

    .line 1685
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1776
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1779
    :goto_0
    return-void

    .line 1778
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1804
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1807
    :goto_0
    return-void

    .line 1806
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(III)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1819
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1822
    :goto_0
    return-void

    .line 1821
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1833
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1836
    :goto_0
    return-void

    .line 1835
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1790
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1793
    :goto_0
    return-void

    .line 1792
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1847
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1850
    :goto_0
    return-void

    .line 1849
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(IIIJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "delayMillis"    # J

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1735
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1738
    :goto_0
    return-void

    .line 1737
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(IIILjava/lang/Object;J)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delayMillis"    # J

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1749
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1752
    :goto_0
    return-void

    .line 1751
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p5, p6}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(IIJ)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "delayMillis"    # J

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1722
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1725
    :goto_0
    return-void

    .line 1724
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(IJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1696
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1699
    :goto_0
    return-void

    .line 1698
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1709
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1712
    :goto_0
    return-void

    .line 1711
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1762
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1765
    :goto_0
    return-void

    .line 1764
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setDbg(Z)V
    .locals 1
    .param p1, "dbg"    # Z

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1917
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1920
    :goto_0
    return-void

    .line 1919
    :cond_0
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2500(Lcom/android/internal/util/StateMachine$SmHandler;Z)V

    goto :goto_0
.end method

.method protected final setInitialState(Lcom/android/internal/util/State;)V
    .locals 1
    .param p1, "initialState"    # Lcom/android/internal/util/State;

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$900(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V

    .line 1298
    return-void
.end method

.method public final setLogOnlyTransitions(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->setLogOnlyTransitions(Z)V

    .line 1418
    return-void
.end method

.method public final setLogRecSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->setSize(I)V

    .line 1409
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1928
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    .line 1932
    :goto_0
    return-void

    .line 1931
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2600(Lcom/android/internal/util/StateMachine$SmHandler;)V

    goto :goto_0
.end method

.method protected final transitionTo(Lcom/android/internal/util/IState;)V
    .locals 1
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1200(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    .line 1336
    return-void
.end method

.method protected final transitionToHaltingState()V
    .locals 2

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1300(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1200(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    .line 1347
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1500(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V

    .line 1369
    :cond_0
    return-void
.end method
