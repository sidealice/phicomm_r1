.class Lcom/unisound/sdk/ch;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/unisound/sdk/cg;

.field final synthetic b:Lcom/unisound/sdk/cf;


# direct methods
.method public constructor <init>(Lcom/unisound/sdk/cf;Lcom/unisound/sdk/cg;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ch;->b:Lcom/unisound/sdk/cf;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/unisound/sdk/ch;->a:Lcom/unisound/sdk/cg;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/ch;->a:Lcom/unisound/sdk/cg;

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "USCAsyncTask doInBackground: "

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aget-object v2, p1, v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/ch;->a:Lcom/unisound/sdk/cg;

    invoke-interface {v0, p1}, Lcom/unisound/sdk/cg;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/ch;->b:Lcom/unisound/sdk/cf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unisound/sdk/cf;->a(Lcom/unisound/sdk/cf;Z)Z

    iget-object v0, p0, Lcom/unisound/sdk/ch;->a:Lcom/unisound/sdk/cg;

    invoke-interface {v0, p1}, Lcom/unisound/sdk/cg;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/ch;->b:Lcom/unisound/sdk/cf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unisound/sdk/cf;->a(Lcom/unisound/sdk/cf;Z)Z

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
