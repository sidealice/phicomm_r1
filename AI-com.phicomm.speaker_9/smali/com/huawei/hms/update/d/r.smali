.class Lcom/huawei/hms/update/d/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/huawei/hms/update/b/a/a;

.field final synthetic b:Lcom/huawei/hms/update/d/q;


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/d/q;Lcom/huawei/hms/update/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/update/d/r;->b:Lcom/huawei/hms/update/d/q;

    iput-object p2, p0, Lcom/huawei/hms/update/d/r;->a:Lcom/huawei/hms/update/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/update/d/r;->b:Lcom/huawei/hms/update/d/q;

    invoke-static {v0}, Lcom/huawei/hms/update/d/q;->a(Lcom/huawei/hms/update/d/q;)Lcom/huawei/hms/update/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/update/d/r;->a:Lcom/huawei/hms/update/b/a/a;

    invoke-static {v1}, Lcom/huawei/hms/update/d/q;->b(Lcom/huawei/hms/update/b/a/a;)Lcom/huawei/hms/update/b/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/hms/update/b/a/c;->a(Lcom/huawei/hms/update/b/a/a;)V

    return-void
.end method
