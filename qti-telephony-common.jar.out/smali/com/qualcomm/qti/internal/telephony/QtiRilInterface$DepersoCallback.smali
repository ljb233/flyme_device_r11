.class Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;
.super Lcom/qualcomm/qcrilhook/OemHookCallback;
.source "QtiRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DepersoCallback"
.end annotation


# instance fields
.field ERROR:I

.field SUCCESS:I

.field depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Lorg/codeaurora/internal/IDepersoResCallback;Landroid/os/Message;)V
    .locals 1
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .param p2, "callback"    # Lorg/codeaurora/internal/IDepersoResCallback;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 221
    invoke-direct {p0, p3}, Lcom/qualcomm/qcrilhook/OemHookCallback;-><init>(Landroid/os/Message;)V

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->SUCCESS:I

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->ERROR:I

    .line 222
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

    .line 220
    return-void
.end method


# virtual methods
.method public onOemHookException(I)V
    .locals 2
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string/jumbo v1, "DepersoResult ERROR"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap2(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->ERROR:I

    invoke-interface {v0, v1, p1}, Lorg/codeaurora/internal/IDepersoResCallback;->onDepersoResult(II)V

    .line 237
    return-void
.end method

.method public onOemHookResponse([BI)V
    .locals 2
    .param p1, "response"    # [B
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string/jumbo v1, "DepersoResult SUCCESS"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap2(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->SUCCESS:I

    invoke-interface {v0, v1, p2}, Lorg/codeaurora/internal/IDepersoResCallback;->onDepersoResult(II)V

    .line 226
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string/jumbo v1, "DepersoResult ERROR"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap2(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->ERROR:I

    invoke-interface {v0, v1, p2}, Lorg/codeaurora/internal/IDepersoResCallback;->onDepersoResult(II)V

    goto :goto_0
.end method
