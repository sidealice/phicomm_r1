.class final synthetic Lcom/phicomm/speaker/views/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/views/CommonDialog;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/CommonDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/c;->a:Lcom/phicomm/speaker/views/CommonDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/views/c;->a:Lcom/phicomm/speaker/views/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/CommonDialog;->b(Landroid/view/View;)V

    return-void
.end method
