.class Lcom/unisound/lib/UnisAccountAssistant$2;
.super Ljava/lang/Object;
.source "UnisAccountAssistant.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisAccountAssistant;->exitUserCenter(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/UnisAccountAssistant;


# direct methods
.method constructor <init>(Lcom/unisound/lib/UnisAccountAssistant;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/unisound/lib/UnisAccountAssistant$2;->this$0:Lcom/unisound/lib/UnisAccountAssistant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant$2;->this$0:Lcom/unisound/lib/UnisAccountAssistant;

    invoke-static {v0}, Lcom/unisound/lib/UnisAccountAssistant;->access$400(Lcom/unisound/lib/UnisAccountAssistant;)Lcom/unisound/lib/usercenter/bean/TokenHeader;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/unisound/lib/UnisAccountAssistant$2;->this$0:Lcom/unisound/lib/UnisAccountAssistant;

    invoke-static {v1}, Lcom/unisound/lib/UnisAccountAssistant;->access$600(Lcom/unisound/lib/UnisAccountAssistant;)Lcom/unisound/lib/net/UserRequestClient;

    move-result-object v1

    const-string v2, "UnisAccountAssistant"

    new-instance v3, Lcom/unisound/lib/UnisAccountAssistant$2$1;

    invoke-direct {v3, p0}, Lcom/unisound/lib/UnisAccountAssistant$2$1;-><init>(Lcom/unisound/lib/UnisAccountAssistant$2;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/unisound/lib/net/UserRequestClient;->exitUserCenter(Ljava/lang/Object;Lcom/unisound/lib/usercenter/bean/TokenHeader;Lcom/unisound/lib/net/HttpUserCallBack;)V

    return-void
.end method
