.class Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "HomeFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;-><init>(Lcom/phicomm/speaker/fragment/HomeFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/fragment/HomeFragment;

.field final synthetic b:Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;Lcom/phicomm/speaker/fragment/HomeFragment;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding$3;->b:Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding$3;->a:Lcom/phicomm/speaker/fragment/HomeFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding$3;->a:Lcom/phicomm/speaker/fragment/HomeFragment;

    invoke-virtual {p1}, Lcom/phicomm/speaker/fragment/HomeFragment;->reTryGetLog()V

    return-void
.end method
