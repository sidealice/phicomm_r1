.class Lcom/unisound/vui/util/CrashHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/util/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/util/CrashHandler;

.field final synthetic val$ex:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/unisound/vui/util/CrashHandler;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/util/CrashHandler;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/CrashHandler$1;->this$0:Lcom/unisound/vui/util/CrashHandler;

    iput-object p2, p0, Lcom/unisound/vui/util/CrashHandler$1;->val$ex:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$1;->this$0:Lcom/unisound/vui/util/CrashHandler;

    iget-object v1, p0, Lcom/unisound/vui/util/CrashHandler$1;->val$ex:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/unisound/vui/util/CrashHandler;->access$000(Lcom/unisound/vui/util/CrashHandler;Ljava/lang/Throwable;)Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$1;->val$ex:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/unisound/vui/util/CrashHandler;->isOOM(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/unisound/vui/util/CrashHandler;->HPROF_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/vui/util/CrashHandler$1;->this$0:Lcom/unisound/vui/util/CrashHandler;

    invoke-static {v1}, Lcom/unisound/vui/util/CrashHandler;->access$100(Lcom/unisound/vui/util/CrashHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".hprof"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/unisound/vui/util/CrashHandler;->HPROF_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CrashHandler"

    const-string v2, "couldn\u2019t dump hprof %s"

    invoke-static {v1, v2, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
