.class Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$2;
.super Ljava/lang/Object;
.source "AlbumSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 104
    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 107
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-virtual {p2}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class p4, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "album"

    .line 108
    iget-object p4, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p4}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$100(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/darsh/multipleimageselect/models/Album;

    iget-object p3, p3, Lcom/darsh/multipleimageselect/models/Album;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object p2, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    const/16 p3, 0x7d0

    invoke-virtual {p2, p1, p3}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
