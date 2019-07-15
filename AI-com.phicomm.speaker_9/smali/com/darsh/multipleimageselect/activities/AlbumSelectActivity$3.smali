.class Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;
.super Landroid/os/Handler;
.source "AlbumSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;


# direct methods
.method constructor <init>(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    packed-switch v0, :pswitch_data_0

    .line 170
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 163
    :pswitch_0
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$500(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$900(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 131
    :pswitch_1
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$400(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)V

    .line 133
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$500(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$600(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_0

    .line 123
    :pswitch_2
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$200(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)V

    .line 125
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$300(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)V

    goto :goto_0

    .line 147
    :pswitch_3
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$700(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    new-instance v0, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;

    iget-object v3, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-virtual {v3}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {v4}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$100(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p1, v0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$702(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;)Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;

    .line 149
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$600(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/widget/GridView;

    move-result-object p1

    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$700(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$500(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$600(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 153
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-virtual {v0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p1, v0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$800(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$700(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 140
    :pswitch_4
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$500(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$600(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
