.class Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;
.super Landroid/os/Handler;
.source "ImageSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;


# direct methods
.method constructor <init>(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$800(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1300(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 142
    :pswitch_1
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$700(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V

    .line 144
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$800(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$900(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_1

    .line 134
    :pswitch_2
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$500(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V

    .line 136
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$600(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V

    goto/16 :goto_1

    .line 164
    :pswitch_3
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1000(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    new-instance v0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

    iget-object v3, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-virtual {v3}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v4}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1100(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p1, v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1002(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;)Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

    .line 166
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$900(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/widget/GridView;

    move-result-object p1

    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1000(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$800(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$900(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-virtual {v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p1, v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1200(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;I)V

    goto :goto_1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1000(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;->notifyDataSetChanged()V

    .line 178
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$100(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$402(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;I)I

    .line 180
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$100(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/view/ActionMode;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$400(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    sget v2, Lcom/darsh/multipleimageselect/R$string;->selected:I

    invoke-virtual {v1, v2}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 151
    :pswitch_4
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$800(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$900(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_1

    .line 193
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_1
    :goto_1
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
