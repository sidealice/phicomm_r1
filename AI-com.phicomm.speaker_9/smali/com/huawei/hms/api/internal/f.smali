.class Lcom/huawei/hms/api/internal/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/huawei/hms/support/api/ResolveResult;

.field final synthetic b:Lcom/huawei/hms/api/internal/e;


# direct methods
.method constructor <init>(Lcom/huawei/hms/api/internal/e;Lcom/huawei/hms/support/api/ResolveResult;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/api/internal/f;->b:Lcom/huawei/hms/api/internal/e;

    iput-object p2, p0, Lcom/huawei/hms/api/internal/f;->a:Lcom/huawei/hms/support/api/ResolveResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/api/internal/f;->b:Lcom/huawei/hms/api/internal/e;

    iget-object v0, v0, Lcom/huawei/hms/api/internal/e;->a:Lcom/huawei/hms/api/internal/b;

    iget-object v1, p0, Lcom/huawei/hms/api/internal/f;->a:Lcom/huawei/hms/support/api/ResolveResult;

    invoke-static {v0, v1}, Lcom/huawei/hms/api/internal/b;->b(Lcom/huawei/hms/api/internal/b;Lcom/huawei/hms/support/api/ResolveResult;)V

    return-void
.end method
