.class Lcom/unisound/lib/push/CommonPushManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/push/CommonPushManager;->initPushClient(Landroid/content/Context;Lcom/unisound/lib/push/bean/PushParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/push/CommonPushManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/unisound/lib/push/CommonPushManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/CommonPushManager$2;->this$0:Lcom/unisound/lib/push/CommonPushManager;

    iput-object p2, p0, Lcom/unisound/lib/push/CommonPushManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "CommonPushManager"

    const-string v1, "delay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager$2;->this$0:Lcom/unisound/lib/push/CommonPushManager;

    iget-object v1, p0, Lcom/unisound/lib/push/CommonPushManager$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/unisound/lib/push/CommonPushManager;->access$100(Lcom/unisound/lib/push/CommonPushManager;Landroid/content/Context;)V

    return-void
.end method
