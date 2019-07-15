.class final Lcom/alibaba/sdk/android/feedback/util/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/util/m;->a:Z

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/util/m;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/util/m;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/k;->c(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/k;->d(Landroid/content/Context;)V

    return-void
.end method
