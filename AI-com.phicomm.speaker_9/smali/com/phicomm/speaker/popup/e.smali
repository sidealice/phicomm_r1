.class final synthetic Lcom/phicomm/speaker/popup/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/popup/c;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/popup/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/popup/e;->a:Lcom/phicomm/speaker/popup/c;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/popup/e;->a:Lcom/phicomm/speaker/popup/c;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/popup/c;->a(Landroid/view/View;)V

    return-void
.end method
