.class Lcom/huawei/hms/update/d/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/huawei/hms/update/d/v;


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/d/v;III)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/update/d/w;->d:Lcom/huawei/hms/update/d/v;

    iput p2, p0, Lcom/huawei/hms/update/d/w;->a:I

    iput p3, p0, Lcom/huawei/hms/update/d/w;->b:I

    iput p4, p0, Lcom/huawei/hms/update/d/w;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/update/d/w;->d:Lcom/huawei/hms/update/d/v;

    iget-object v0, v0, Lcom/huawei/hms/update/d/v;->a:Lcom/huawei/hms/update/b/a/b;

    iget v1, p0, Lcom/huawei/hms/update/d/w;->a:I

    iget v2, p0, Lcom/huawei/hms/update/d/w;->b:I

    iget v3, p0, Lcom/huawei/hms/update/d/w;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/huawei/hms/update/b/a/b;->a(III)V

    return-void
.end method
