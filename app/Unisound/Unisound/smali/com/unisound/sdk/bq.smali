.class Lcom/unisound/sdk/bq;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/sdk/bg;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/util/List;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->i(Lcom/unisound/sdk/bg;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x10108

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x10109

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x1010a

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x1010b

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x1010c

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x1010d

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x1010e

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x1010f

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x10110

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bq;->a([Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bq;->a(Ljava/lang/Integer;)V

    return-void
.end method
