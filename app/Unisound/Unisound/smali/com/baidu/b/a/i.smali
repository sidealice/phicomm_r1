.class Lcom/baidu/b/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/b/a/h;


# direct methods
.method constructor <init>(Lcom/baidu/b/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/b/a/i;->a:Lcom/baidu/b/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/b/a/i;->a:Lcom/baidu/b/a/h;

    iget-object v1, p0, Lcom/baidu/b/a/i;->a:Lcom/baidu/b/a/h;

    invoke-static {v1}, Lcom/baidu/b/a/h;->a(Lcom/baidu/b/a/h;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/b/a/h;->a(Lcom/baidu/b/a/h;Ljava/util/List;)V

    return-void
.end method
