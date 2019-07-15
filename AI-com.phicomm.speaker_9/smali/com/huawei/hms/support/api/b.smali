.class Lcom/huawei/hms/support/api/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/support/api/transport/DatagramTransport$a;


# instance fields
.field final synthetic a:Lcom/huawei/hms/support/api/a;


# direct methods
.method constructor <init>(Lcom/huawei/hms/support/api/a;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/b;->a:Lcom/huawei/hms/support/api/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/huawei/hms/core/aidl/IMessageEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/b;->a:Lcom/huawei/hms/support/api/a;

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/support/api/a;->a(Lcom/huawei/hms/support/api/a;ILcom/huawei/hms/core/aidl/IMessageEntity;)V

    iget-object p1, p0, Lcom/huawei/hms/support/api/b;->a:Lcom/huawei/hms/support/api/a;

    invoke-static {p1}, Lcom/huawei/hms/support/api/a;->a(Lcom/huawei/hms/support/api/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
