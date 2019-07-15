.class final Lcom/huawei/hms/update/d/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/update/b/a/a;


# instance fields
.field final synthetic a:Lcom/huawei/hms/update/b/a/a;


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/update/d/s;->a:Lcom/huawei/hms/update/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/huawei/hms/update/b/a/d;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/huawei/hms/update/d/t;

    invoke-direct {v1, p0, p1, p2}, Lcom/huawei/hms/update/d/t;-><init>(Lcom/huawei/hms/update/d/s;ILcom/huawei/hms/update/b/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
