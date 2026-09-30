// Função para atualizar os dados no HTML
async function atualizarStatus() {
    // Pede as informações ao processo principal do Electron
    const dados = await window.api.getSystemData();
    
    // Atualiza o HTML com os dados recebidos
    document.getElementById('os-info').innerText = dados.os;
    document.getElementById('cpu-info').innerText = `${dados.cpuLoad.toFixed(1)}%`;
    document.getElementById('ram-info').innerText = `${(dados.ramFree / 1024 / 1024 / 1024).toFixed(2)} GB`;
}

// Atualiza os dados assim que abre e depois a cada 2 segundos
atualizarStatus();
setInterval(atualizarStatus, 2000);
