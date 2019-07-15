.class final synthetic Lcom/phicomm/speaker/views/dialog/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/a;->a:Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/a;->a:Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->a()V

    return-void
.end method
