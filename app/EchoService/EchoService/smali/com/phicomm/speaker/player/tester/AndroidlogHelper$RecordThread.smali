.class Lcom/phicomm/speaker/player/tester/AndroidlogHelper$RecordThread;
.super Ljava/lang/Object;
.source "AndroidlogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/tester/AndroidlogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/tester/AndroidlogHelper;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/tester/AndroidlogHelper;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/player/tester/AndroidlogHelper$RecordThread;->this$0:Lcom/phicomm/speaker/player/tester/AndroidlogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/tester/AndroidlogHelper;Lcom/phicomm/speaker/player/tester/AndroidlogHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/tester/AndroidlogHelper;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/tester/AndroidlogHelper$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/tester/AndroidlogHelper$RecordThread;-><init>(Lcom/phicomm/speaker/player/tester/AndroidlogHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 31
    const/4 v1, 0x0

    .line 33
    .local v1, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "logcat -c"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 35
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logcat -f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/tester/AndroidlogHelper$RecordThread;->this$0:Lcom/phicomm/speaker/player/tester/AndroidlogHelper;

    invoke-static {v4}, Lcom/phicomm/speaker/player/tester/AndroidlogHelper;->access$100(Lcom/phicomm/speaker/player/tester/AndroidlogHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/tester/AndroidlogHelper$RecordThread;->this$0:Lcom/phicomm/speaker/player/tester/AndroidlogHelper;

    iget-object v4, v4, Lcom/phicomm/speaker/player/tester/AndroidlogHelper;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 36
    const-string v2, "AndroidlogHelper"

    const-string v3, "start log record!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
