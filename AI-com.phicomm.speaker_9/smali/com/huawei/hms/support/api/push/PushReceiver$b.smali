.class Lcom/huawei/hms/support/api/push/PushReceiver$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/support/api/push/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/support/api/push/PushReceiver$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/hms/support/api/push/PushReceiver$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/huawei/hms/support/api/push/a/a/d;

    iget-object v1, p0, Lcom/huawei/hms/support/api/push/PushReceiver$b;->a:Landroid/content/Context;

    const-string v2, "push_client_self_info"

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/support/api/push/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "hasRequestToken"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/support/api/push/a/a/d;->a(Ljava/lang/String;Z)V

    const-string v1, "token_info"

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/push/a/a/d;->d(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/huawei/hms/support/api/push/PushReceiver$b;->a:Landroid/content/Context;

    const-string v1, "push_client_self_info"

    const-string v2, "token_info"

    iget-object v3, p0, Lcom/huawei/hms/support/api/push/PushReceiver$b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/support/api/push/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
