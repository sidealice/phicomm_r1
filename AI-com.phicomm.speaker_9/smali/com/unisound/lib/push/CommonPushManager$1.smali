.class Lcom/unisound/lib/push/CommonPushManager$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/push/CommonPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/push/CommonPushManager;


# direct methods
.method constructor <init>(Lcom/unisound/lib/push/CommonPushManager;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/CommonPushManager$1;->this$0:Lcom/unisound/lib/push/CommonPushManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
