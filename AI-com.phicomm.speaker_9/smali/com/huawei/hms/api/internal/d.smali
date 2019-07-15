.class Lcom/huawei/hms/api/internal/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/huawei/hms/support/api/ResolveResult;

.field final synthetic b:Lcom/huawei/hms/api/internal/c;


# direct methods
.method constructor <init>(Lcom/huawei/hms/api/internal/c;Lcom/huawei/hms/support/api/ResolveResult;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/api/internal/d;->b:Lcom/huawei/hms/api/internal/c;

    iput-object p2, p0, Lcom/huawei/hms/api/internal/d;->a:Lcom/huawei/hms/support/api/ResolveResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/api/internal/d;->b:Lcom/huawei/hms/api/internal/c;

    iget-object v0, v0, Lcom/huawei/hms/api/internal/c;->a:Lcom/huawei/hms/api/internal/b;

    iget-object v1, p0, Lcom/huawei/hms/api/internal/d;->a:Lcom/huawei/hms/support/api/ResolveResult;

    invoke-static {v0, v1}, Lcom/huawei/hms/api/internal/b;->a(Lcom/huawei/hms/api/internal/b;Lcom/huawei/hms/support/api/ResolveResult;)V

    return-void
.end method
