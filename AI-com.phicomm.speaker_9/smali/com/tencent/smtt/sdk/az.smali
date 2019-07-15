.class Lcom/tencent/smtt/sdk/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/TbsReaderView;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/TbsReaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBackAction(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13a2

    const/4 v2, 0x0

    const/16 v3, 0x1393

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_7

    const/16 v1, 0x13a6

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v4, v5

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/a/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    iget-object p2, p2, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    const/16 v0, 0x139e

    invoke-static {p2, v0}, Lcom/tencent/smtt/sdk/TbsReaderView;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tip"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "statistics"

    const-string v1, "AHNG816"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "channel_id"

    const/16 v1, 0x2a53

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    const-string v1, "AHNG815"

    goto/16 :goto_1

    :cond_0
    const-string v0, ""

    if-eqz p2, :cond_1

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    const-string v0, "docpath"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v6, v0

    move-object v10, v2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    iget-object v5, v0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v9, "txt"

    invoke-static/range {v5 .. v10}, Lcom/tencent/smtt/sdk/QbSdk;->startQBForDoc(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/a/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    iget-object p2, p2, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    const/16 v0, 0x139d

    invoke-static {p2, v0}, Lcom/tencent/smtt/sdk/TbsReaderView;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tip"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "statistics"

    const-string v1, "AHNG808"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "channel_id"

    const/16 v1, 0x2a51

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    const-string v1, "AHNG807"

    goto :goto_1

    :cond_2
    const-string v0, ""

    if-eqz p2, :cond_3

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    const-string v0, "docpath"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v6, v0

    move-object v10, v2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    iget-object v5, v0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v9, ""

    invoke-static/range {v5 .. v10}, Lcom/tencent/smtt/sdk/QbSdk;->startQBForDoc(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    const-string v1, "AHNG809"

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/a/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    iget-object p2, p2, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    const/16 v0, 0x139f

    invoke-static {p2, v0}, Lcom/tencent/smtt/sdk/TbsReaderView;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tip"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "statistics"

    const-string v1, "AHNG812"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "channel_id"

    const/16 v1, 0x2a52

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    const-string v1, "AHNG811"

    :goto_1
    invoke-virtual {p2, v1}, Lcom/tencent/smtt/sdk/TbsReaderView;->userStatistics(Ljava/lang/String;)V

    move-object p2, v0

    goto/16 :goto_0

    :cond_4
    const-string v0, ""

    if-eqz p2, :cond_5

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    const-string v0, "docpath"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v6, v0

    move-object v10, v2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    iget-object v5, v0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v9, "pdf"

    invoke-static/range {v5 .. v10}, Lcom/tencent/smtt/sdk/QbSdk;->startQBForDoc(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    const-string v1, "AHNG813"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsReaderView;->userStatistics(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_a

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/smtt/sdk/TbsReaderView;->gReaderPackName:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsReaderView;->gReaderPackVersion:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/a/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    iget-object p2, p2, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    const/16 v0, 0x13a5

    invoke-static {p2, v0}, Lcom/tencent/smtt/sdk/TbsReaderView;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tip"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "statistics"

    const-string v1, "AHNG828"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "channel_id"

    const/16 v1, 0x2ad5

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    const-string v1, "AHNG827"

    goto :goto_1

    :cond_8
    const-string v0, ""

    if-eqz p2, :cond_9

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    const-string v0, "docpath"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    move-object v6, v0

    move-object v10, v2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    iget-object v5, v0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v9, "doc"

    invoke-static/range {v5 .. v10}, Lcom/tencent/smtt/sdk/QbSdk;->startQBForDoc(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    const-string v1, "AHNG829"

    goto :goto_2

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsReaderView;->d:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    if-eqz v0, :cond_b

    if-nez v4, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/az;->a:Lcom/tencent/smtt/sdk/TbsReaderView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsReaderView;->d:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;->onCallBackAction(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1390
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
