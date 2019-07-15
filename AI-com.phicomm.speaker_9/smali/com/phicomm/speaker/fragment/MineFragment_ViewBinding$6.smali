.class Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$6;
.super Ljava/lang/Object;
.source "MineFragment_ViewBinding.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;-><init>(Lcom/phicomm/speaker/fragment/MineFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/fragment/MineFragment;

.field final synthetic b:Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$6;->b:Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$6;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$6;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    invoke-virtual {p1}, Lcom/phicomm/speaker/fragment/MineFragment;->longAbout()Z

    move-result p1

    return p1
.end method
