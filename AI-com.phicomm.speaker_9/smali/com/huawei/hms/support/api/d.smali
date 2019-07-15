.class Lcom/huawei/hms/support/api/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/support/api/transport/DatagramTransport$a;


# instance fields
.field final synthetic a:Lcom/huawei/hms/support/api/a$a;

.field final synthetic b:Lcom/huawei/hms/support/api/client/ResultCallback;

.field final synthetic c:Lcom/huawei/hms/support/api/a;


# direct methods
.method constructor <init>(Lcom/huawei/hms/support/api/a;Lcom/huawei/hms/support/api/a$a;Lcom/huawei/hms/support/api/client/ResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/d;->c:Lcom/huawei/hms/support/api/a;

    iput-object p2, p0, Lcom/huawei/hms/support/api/d;->a:Lcom/huawei/hms/support/api/a$a;

    iput-object p3, p0, Lcom/huawei/hms/support/api/d;->b:Lcom/huawei/hms/support/api/client/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/huawei/hms/core/aidl/IMessageEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/d;->c:Lcom/huawei/hms/support/api/a;

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/support/api/a;->a(Lcom/huawei/hms/support/api/a;ILcom/huawei/hms/core/aidl/IMessageEntity;)V

    iget-object p1, p0, Lcom/huawei/hms/support/api/d;->a:Lcom/huawei/hms/support/api/a$a;

    iget-object p2, p0, Lcom/huawei/hms/support/api/d;->b:Lcom/huawei/hms/support/api/client/ResultCallback;

    iget-object v0, p0, Lcom/huawei/hms/support/api/d;->c:Lcom/huawei/hms/support/api/a;

    invoke-static {v0}, Lcom/huawei/hms/support/api/a;->b(Lcom/huawei/hms/support/api/a;)Lcom/huawei/hms/support/api/client/Result;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/huawei/hms/support/api/a$a;->a(Lcom/huawei/hms/support/api/client/ResultCallback;Lcom/huawei/hms/support/api/client/Result;)V

    return-void
.end method
