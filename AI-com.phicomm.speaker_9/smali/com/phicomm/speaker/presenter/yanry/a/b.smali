.class final synthetic Lcom/phicomm/speaker/presenter/yanry/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/a/a;

.field private final b:Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/a;Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/b;->a:Lcom/phicomm/speaker/presenter/yanry/a/a;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/b;->b:Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/b;->a:Lcom/phicomm/speaker/presenter/yanry/a/a;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/b;->b:Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/presenter/yanry/a/a;->a(Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;Landroid/view/View;)V

    return-void
.end method
