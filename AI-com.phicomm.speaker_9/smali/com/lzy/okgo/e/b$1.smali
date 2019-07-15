.class Lcom/lzy/okgo/e/b$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lcom/lzy/okgo/e/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/e/b;->a(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lzy/okgo/e/b;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/e/b;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/lzy/okgo/e/b$1;->a:Lcom/lzy/okgo/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJJ)V
    .locals 10

    .line 324
    invoke-static {}, Lcom/lzy/okgo/a;->a()Lcom/lzy/okgo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/a;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v9, Lcom/lzy/okgo/e/b$1$1;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/lzy/okgo/e/b$1$1;-><init>(Lcom/lzy/okgo/e/b$1;JJJ)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
