.class Lcom/tencent/smtt/sdk/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tencent/smtt/sdk/e;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/e;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/f;->b:Lcom/tencent/smtt/sdk/e;

    iput-boolean p2, p0, Lcom/tencent/smtt/sdk/f;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/f;->b:Lcom/tencent/smtt/sdk/e;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/e;->c:Lcom/tencent/smtt/sdk/ValueCallback;

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/f;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method
