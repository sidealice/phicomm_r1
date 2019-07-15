.class final synthetic Lcom/phicomm/speaker/popup/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/popup/a;->a:Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/popup/a;->a:Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;

    invoke-virtual {v0}, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->b()V

    return-void
.end method
