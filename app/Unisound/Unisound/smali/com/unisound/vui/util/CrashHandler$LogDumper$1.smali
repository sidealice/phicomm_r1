.class Lcom/unisound/vui/util/CrashHandler$LogDumper$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/util/CrashHandler$LogDumper;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unisound/vui/util/CrashHandler$LogDumper;


# direct methods
.method constructor <init>(Lcom/unisound/vui/util/CrashHandler$LogDumper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/unisound/vui/util/CrashHandler$LogDumper;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper$1;->this$1:Lcom/unisound/vui/util/CrashHandler$LogDumper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper$1;->this$1:Lcom/unisound/vui/util/CrashHandler$LogDumper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unisound/vui/util/CrashHandler$LogDumper;->access$302(Lcom/unisound/vui/util/CrashHandler$LogDumper;Z)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
