.class final synthetic Lcom/phicomm/speaker/presenter/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/k;->a:Lcom/phicomm/speaker/presenter/j;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/k;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface;)V

    return-void
.end method
