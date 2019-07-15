.class Lcom/huawei/hms/update/d/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/huawei/hms/update/b/a/d;

.field final synthetic c:Lcom/huawei/hms/update/d/s;


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/d/s;ILcom/huawei/hms/update/b/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/update/d/t;->c:Lcom/huawei/hms/update/d/s;

    iput p2, p0, Lcom/huawei/hms/update/d/t;->a:I

    iput-object p3, p0, Lcom/huawei/hms/update/d/t;->b:Lcom/huawei/hms/update/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/update/d/t;->c:Lcom/huawei/hms/update/d/s;

    iget-object v0, v0, Lcom/huawei/hms/update/d/s;->a:Lcom/huawei/hms/update/b/a/a;

    iget v1, p0, Lcom/huawei/hms/update/d/t;->a:I

    iget-object v2, p0, Lcom/huawei/hms/update/d/t;->b:Lcom/huawei/hms/update/b/a/d;

    invoke-interface {v0, v1, v2}, Lcom/huawei/hms/update/b/a/a;->a(ILcom/huawei/hms/update/b/a/d;)V

    return-void
.end method
